
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_field {int type; int lsm_rule; int lsm_str; } ;
 int kfree (int ) ;
 int security_audit_rule_free (int ) ;

__attribute__((used)) static void audit_free_lsm_field(struct audit_field *f)
{
 switch (f->type) {
 case 128:
 case 131:
 case 129:
 case 130:
 case 132:
 case 133:
 case 135:
 case 134:
 case 136:
 case 137:
  kfree(f->lsm_str);
  security_audit_rule_free(f->lsm_rule);
 }
}
