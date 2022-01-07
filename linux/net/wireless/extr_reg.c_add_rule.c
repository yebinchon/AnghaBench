
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_reg_rule {int dummy; } ;


 int memcpy (struct ieee80211_reg_rule*,struct ieee80211_reg_rule*,int) ;
 scalar_t__ rule_contains (struct ieee80211_reg_rule*,struct ieee80211_reg_rule*) ;

__attribute__((used)) static void add_rule(struct ieee80211_reg_rule *rule,
       struct ieee80211_reg_rule *reg_rules, u32 *n_rules)
{
 struct ieee80211_reg_rule *tmp_rule;
 int i;

 for (i = 0; i < *n_rules; i++) {
  tmp_rule = &reg_rules[i];

  if (rule_contains(tmp_rule, rule))
   return;


  if (rule_contains(rule, tmp_rule)) {
   memcpy(tmp_rule, rule, sizeof(*rule));
   return;
  }
 }

 memcpy(&reg_rules[*n_rules], rule, sizeof(*rule));
 (*n_rules)++;
}
