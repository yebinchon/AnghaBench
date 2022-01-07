
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_label {int dummy; } ;
struct aa_audit_rule {int label; } ;





 int ENOENT ;
 scalar_t__ aa_label_is_subset (struct aa_label*,int ) ;
 struct aa_label* aa_secid_to_label (int) ;

int aa_audit_rule_match(u32 sid, u32 field, u32 op, void *vrule)
{
 struct aa_audit_rule *rule = vrule;
 struct aa_label *label;
 int found = 0;

 label = aa_secid_to_label(sid);

 if (!label)
  return -ENOENT;

 if (aa_label_is_subset(label, rule->label))
  found = 1;

 switch (field) {
 case 130:
  switch (op) {
  case 129:
   return found;
  case 128:
   return !found;
  }
 }
 return 0;
}
