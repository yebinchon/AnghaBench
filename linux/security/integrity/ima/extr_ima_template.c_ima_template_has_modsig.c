
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ima_template_desc {int num_fields; TYPE_1__** fields; } ;
struct TYPE_2__ {int field_id; } ;


 int strcmp (int ,char*) ;

bool ima_template_has_modsig(const struct ima_template_desc *ima_template)
{
 int i;

 for (i = 0; i < ima_template->num_fields; i++)
  if (!strcmp(ima_template->fields[i]->field_id, "modsig") ||
      !strcmp(ima_template->fields[i]->field_id, "d-modsig"))
   return 1;

 return 0;
}
