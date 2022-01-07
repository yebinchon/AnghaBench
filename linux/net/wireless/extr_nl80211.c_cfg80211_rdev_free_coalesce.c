
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_registered_device {struct cfg80211_coalesce_rules* coalesce; } ;
struct cfg80211_coalesce_rules {int n_rules; int n_patterns; struct cfg80211_coalesce_rules* rules; struct cfg80211_coalesce_rules* patterns; struct cfg80211_coalesce_rules* mask; } ;
struct cfg80211_coalesce {int n_rules; int n_patterns; struct cfg80211_coalesce* rules; struct cfg80211_coalesce* patterns; struct cfg80211_coalesce* mask; } ;


 int kfree (struct cfg80211_coalesce_rules*) ;

void cfg80211_rdev_free_coalesce(struct cfg80211_registered_device *rdev)
{
 struct cfg80211_coalesce *coalesce = rdev->coalesce;
 int i, j;
 struct cfg80211_coalesce_rules *rule;

 if (!coalesce)
  return;

 for (i = 0; i < coalesce->n_rules; i++) {
  rule = &coalesce->rules[i];
  for (j = 0; j < rule->n_patterns; j++)
   kfree(rule->patterns[j].mask);
  kfree(rule->patterns);
 }
 kfree(coalesce->rules);
 kfree(coalesce);
 rdev->coalesce = ((void*)0);
}
