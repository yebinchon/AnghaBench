
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* coalesce; } ;
struct cfg80211_coalesce_rules {int n_patterns; TYPE_2__* patterns; int condition; int delay; } ;
struct TYPE_4__ {int pattern_len; int pkt_offset; int pattern; int mask; } ;
struct TYPE_3__ {int n_rules; struct cfg80211_coalesce_rules* rules; } ;


 int DIV_ROUND_UP (int,int) ;
 int ENOBUFS ;
 int NL80211_ATTR_COALESCE_RULE ;
 int NL80211_ATTR_COALESCE_RULE_CONDITION ;
 int NL80211_ATTR_COALESCE_RULE_DELAY ;
 int NL80211_ATTR_COALESCE_RULE_PKT_PATTERN ;
 int NL80211_PKTPAT_MASK ;
 int NL80211_PKTPAT_OFFSET ;
 int NL80211_PKTPAT_PATTERN ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nl80211_send_coalesce_rules(struct sk_buff *msg,
           struct cfg80211_registered_device *rdev)
{
 struct nlattr *nl_pats, *nl_pat, *nl_rule, *nl_rules;
 int i, j, pat_len;
 struct cfg80211_coalesce_rules *rule;

 if (!rdev->coalesce->n_rules)
  return 0;

 nl_rules = nla_nest_start_noflag(msg, NL80211_ATTR_COALESCE_RULE);
 if (!nl_rules)
  return -ENOBUFS;

 for (i = 0; i < rdev->coalesce->n_rules; i++) {
  nl_rule = nla_nest_start_noflag(msg, i + 1);
  if (!nl_rule)
   return -ENOBUFS;

  rule = &rdev->coalesce->rules[i];
  if (nla_put_u32(msg, NL80211_ATTR_COALESCE_RULE_DELAY,
    rule->delay))
   return -ENOBUFS;

  if (nla_put_u32(msg, NL80211_ATTR_COALESCE_RULE_CONDITION,
    rule->condition))
   return -ENOBUFS;

  nl_pats = nla_nest_start_noflag(msg,
      NL80211_ATTR_COALESCE_RULE_PKT_PATTERN);
  if (!nl_pats)
   return -ENOBUFS;

  for (j = 0; j < rule->n_patterns; j++) {
   nl_pat = nla_nest_start_noflag(msg, j + 1);
   if (!nl_pat)
    return -ENOBUFS;
   pat_len = rule->patterns[j].pattern_len;
   if (nla_put(msg, NL80211_PKTPAT_MASK,
        DIV_ROUND_UP(pat_len, 8),
        rule->patterns[j].mask) ||
       nla_put(msg, NL80211_PKTPAT_PATTERN, pat_len,
        rule->patterns[j].pattern) ||
       nla_put_u32(msg, NL80211_PKTPAT_OFFSET,
     rule->patterns[j].pkt_offset))
    return -ENOBUFS;
   nla_nest_end(msg, nl_pat);
  }
  nla_nest_end(msg, nl_pats);
  nla_nest_end(msg, nl_rule);
 }
 nla_nest_end(msg, nl_rules);

 return 0;
}
