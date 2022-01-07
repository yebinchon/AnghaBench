
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ima_template_desc {int num_fields; TYPE_1__** fields; } ;
struct TYPE_2__ {int field_id; } ;


 int MSG ;
 int pr_notice (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void check_template_modsig(const struct ima_template_desc *template)
{

 bool has_modsig, has_dmodsig;
 static bool checked;
 int i;


 if (checked)
  return;

 has_modsig = has_dmodsig = 0;
 for (i = 0; i < template->num_fields; i++) {
  if (!strcmp(template->fields[i]->field_id, "modsig"))
   has_modsig = 1;
  else if (!strcmp(template->fields[i]->field_id, "d-modsig"))
   has_dmodsig = 1;
 }

 if (has_modsig && !has_dmodsig)
  pr_notice("template with 'modsig' field also needs 'd-modsig' field\n");

 checked = 1;

}
