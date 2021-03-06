<form action="index.php" method="post">
    {CHtml::hiddenField("action", "save")}
    {CHtml::activeHiddenField("id", $corriculum)}

    <p>
        {CHtml::activeLabel("title", $corriculum)}
        {CHtml::activeTextField("title", $corriculum)}
        {CHtml::error("title", $corriculum)}
    </p>

    <p>
        {CHtml::activeLabel("description", $corriculum)}
        {CHtml::activeTextBox("description", $corriculum)}
        {CHtml::error("description", $corriculum)}
    </p>

    <p>
        {CHtml::activeLabel("direction_id", $corriculum)}
        {CHtml::activeDropDownList("direction_id", $corriculum, CTaxonomyManager::getSpecialitiesList())}
        {CHtml::error("direction_id", $corriculum)}
    </p>

    <p>
        {CHtml::activeLabel("basic_education_id", $corriculum)}
        {CHtml::activeDropDownList("basic_education_id", $corriculum, CTaxonomyManager::getTaxonomy("primary_education")->getTermsList())}
        {CHtml::error("basic_education_id", $corriculum)}
    </p>

    <p>
        {CHtml::activeLabel("profile_id", $corriculum)}
        {CHtml::activeDropDownList("profile_id", $corriculum, CTaxonomyManager::getTaxonomy("education_specializations")->getTermsList())}
        {CHtml::error("profile_id", $corriculum)}
    </p>

    <p>
        {CHtml::activeLabel("qualification_id", $corriculum)}
        {CHtml::activeDropDownList("qualification_id", $corriculum, CTaxonomyManager::getTaxonomy("corriculum_skill")->getTermsList())}
        {CHtml::error("qualification_id", $corriculum)}
    </p>

    <p>
        {CHtml::activeLabel("duration", $corriculum)}
        {CHtml::activeTextField("duration", $corriculum)}
        {CHtml::error("duration", $corriculum)}
    </p>

    <p>
        {CHtml::submit("Сохранить")}
    </p>
</form>