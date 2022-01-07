
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int max_pkt_offset; int max_pattern_len; int min_pattern_len; int max_patterns; } ;
struct nl80211_coalesce_rule_support {TYPE_1__ pat; int max_delay; int max_rules; } ;
struct TYPE_6__ {TYPE_2__* coalesce; } ;
struct cfg80211_registered_device {TYPE_3__ wiphy; } ;
typedef int rule ;
struct TYPE_5__ {int max_pkt_offset; int pattern_max_len; int pattern_min_len; int n_patterns; int max_delay; int n_rules; } ;


 int ENOBUFS ;
 int NL80211_ATTR_COALESCE_RULE ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct nl80211_coalesce_rule_support*) ;

__attribute__((used)) static int nl80211_send_coalesce(struct sk_buff *msg,
     struct cfg80211_registered_device *rdev)
{
 struct nl80211_coalesce_rule_support rule;

 if (!rdev->wiphy.coalesce)
  return 0;

 rule.max_rules = rdev->wiphy.coalesce->n_rules;
 rule.max_delay = rdev->wiphy.coalesce->max_delay;
 rule.pat.max_patterns = rdev->wiphy.coalesce->n_patterns;
 rule.pat.min_pattern_len = rdev->wiphy.coalesce->pattern_min_len;
 rule.pat.max_pattern_len = rdev->wiphy.coalesce->pattern_max_len;
 rule.pat.max_pkt_offset = rdev->wiphy.coalesce->max_pkt_offset;

 if (nla_put(msg, NL80211_ATTR_COALESCE_RULE, sizeof(rule), &rule))
  return -ENOBUFS;

 return 0;
}
