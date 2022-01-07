
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_rule_entry {scalar_t__ action; scalar_t__ func; int list; } ;
typedef enum policy_rule_list { ____Placeholder_policy_rule_list } policy_rule_list ;


 scalar_t__ APPRAISE ;
 int GFP_KERNEL ;
 int IMA_APPRAISE_POLICY ;
 int IMA_CUSTOM_POLICY ;
 int IMA_DEFAULT_POLICY ;
 scalar_t__ POLICY_CHECK ;
 int ima_appraise_flag (scalar_t__) ;
 int ima_default_rules ;
 int ima_policy_rules ;
 struct ima_rule_entry* kmemdup (struct ima_rule_entry*,int,int ) ;
 int list_add_tail (int *,int *) ;
 int temp_ima_appraise ;

__attribute__((used)) static void add_rules(struct ima_rule_entry *entries, int count,
        enum policy_rule_list policy_rule)
{
 int i = 0;

 for (i = 0; i < count; i++) {
  struct ima_rule_entry *entry;

  if (policy_rule & IMA_DEFAULT_POLICY)
   list_add_tail(&entries[i].list, &ima_default_rules);

  if (policy_rule & IMA_CUSTOM_POLICY) {
   entry = kmemdup(&entries[i], sizeof(*entry),
     GFP_KERNEL);
   if (!entry)
    continue;

   list_add_tail(&entry->list, &ima_policy_rules);
  }
  if (entries[i].action == APPRAISE) {
   temp_ima_appraise |= ima_appraise_flag(entries[i].func);
   if (entries[i].func == POLICY_CHECK)
    temp_ima_appraise |= IMA_APPRAISE_POLICY;
  }
 }
}
