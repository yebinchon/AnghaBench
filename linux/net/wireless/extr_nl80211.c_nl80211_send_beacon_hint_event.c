
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 int GFP_ATOMIC ;
 int NL80211_ATTR_FREQ_AFTER ;
 int NL80211_ATTR_FREQ_BEFORE ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_REG_BEACON_HINT ;
 int NL80211_MCGRP_REGULATORY ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_allns (int *,struct sk_buff*,int ,int ,int ) ;
 int get_wiphy_idx (struct wiphy*) ;
 int nl80211_fam ;
 scalar_t__ nl80211_msg_put_channel (struct sk_buff*,struct wiphy*,struct ieee80211_channel*,int) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void nl80211_send_beacon_hint_event(struct wiphy *wiphy,
        struct ieee80211_channel *channel_before,
        struct ieee80211_channel *channel_after)
{
 struct sk_buff *msg;
 void *hdr;
 struct nlattr *nl_freq;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_REG_BEACON_HINT);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }





 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, get_wiphy_idx(wiphy)))
  goto nla_put_failure;


 nl_freq = nla_nest_start_noflag(msg, NL80211_ATTR_FREQ_BEFORE);
 if (!nl_freq)
  goto nla_put_failure;

 if (nl80211_msg_put_channel(msg, wiphy, channel_before, 0))
  goto nla_put_failure;
 nla_nest_end(msg, nl_freq);


 nl_freq = nla_nest_start_noflag(msg, NL80211_ATTR_FREQ_AFTER);
 if (!nl_freq)
  goto nla_put_failure;

 if (nl80211_msg_put_channel(msg, wiphy, channel_after, 0))
  goto nla_put_failure;
 nla_nest_end(msg, nl_freq);

 genlmsg_end(msg, hdr);

 rcu_read_lock();
 genlmsg_multicast_allns(&nl80211_fam, msg, 0,
    NL80211_MCGRP_REGULATORY, GFP_ATOMIC);
 rcu_read_unlock();

 return;

nla_put_failure:
 nlmsg_free(msg);
}
