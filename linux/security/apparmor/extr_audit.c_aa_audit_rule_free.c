
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_audit_rule {int label; } ;


 int IS_ERR (int ) ;
 int aa_put_label (int ) ;
 int kfree (struct aa_audit_rule*) ;

void aa_audit_rule_free(void *vrule)
{
 struct aa_audit_rule *rule = vrule;

 if (rule) {
  if (!IS_ERR(rule->label))
   aa_put_label(rule->label);
  kfree(rule);
 }
}
