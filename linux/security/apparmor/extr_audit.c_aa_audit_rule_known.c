
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_krule {int field_count; struct audit_field* fields; } ;
struct audit_field {int type; } ;




int aa_audit_rule_known(struct audit_krule *rule)
{
 int i;

 for (i = 0; i < rule->field_count; i++) {
  struct audit_field *f = &rule->fields[i];

  switch (f->type) {
  case 128:
   return 1;
  }
 }

 return 0;
}
