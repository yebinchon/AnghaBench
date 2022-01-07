
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aa_audit_rule {int label; } ;
struct TYPE_4__ {TYPE_1__* unconfined; } ;
struct TYPE_3__ {int label; } ;



 int Audit_equal ;
 int Audit_not_equal ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int aa_audit_rule_free (struct aa_audit_rule*) ;
 int aa_label_parse (int *,char*,int ,int,int) ;
 struct aa_audit_rule* kzalloc (int,int ) ;
 TYPE_2__* root_ns ;

int aa_audit_rule_init(u32 field, u32 op, char *rulestr, void **vrule)
{
 struct aa_audit_rule *rule;

 switch (field) {
 case 128:
  if (op != Audit_equal && op != Audit_not_equal)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 rule = kzalloc(sizeof(struct aa_audit_rule), GFP_KERNEL);

 if (!rule)
  return -ENOMEM;


 rule->label = aa_label_parse(&root_ns->unconfined->label, rulestr,
         GFP_KERNEL, 1, 0);
 if (IS_ERR(rule->label)) {
  aa_audit_rule_free(rule);
  return PTR_ERR(rule->label);
 }

 *vrule = rule;
 return 0;
}
