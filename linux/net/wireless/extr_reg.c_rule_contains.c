
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ start_freq_khz; scalar_t__ end_freq_khz; scalar_t__ max_bandwidth_khz; } ;
struct TYPE_4__ {scalar_t__ max_antenna_gain; scalar_t__ max_eirp; } ;
struct ieee80211_reg_rule {scalar_t__ flags; TYPE_1__ freq_range; TYPE_2__ power_rule; } ;



__attribute__((used)) static bool rule_contains(struct ieee80211_reg_rule *r1,
     struct ieee80211_reg_rule *r2)
{

 if (r1->flags != r2->flags)
  return 0;


 if ((r1->power_rule.max_antenna_gain >
      r2->power_rule.max_antenna_gain) ||
     r1->power_rule.max_eirp > r2->power_rule.max_eirp)
  return 0;


 if (r1->freq_range.start_freq_khz > r2->freq_range.start_freq_khz ||
     r1->freq_range.end_freq_khz < r2->freq_range.end_freq_khz)
  return 0;


 if (r1->freq_range.max_bandwidth_khz <
     r2->freq_range.max_bandwidth_khz)
  return 0;

 return 1;
}
