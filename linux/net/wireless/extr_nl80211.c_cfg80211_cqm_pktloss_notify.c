
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int gfp_t ;


 int NL80211_ATTR_CQM_PKT_LOSS_EVENT ;
 struct sk_buff* cfg80211_prepare_cqm (struct net_device*,int const*,int ) ;
 int cfg80211_send_cqm (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 int trace_cfg80211_cqm_pktloss_notify (struct net_device*,int const*,int ) ;

void cfg80211_cqm_pktloss_notify(struct net_device *dev,
     const u8 *peer, u32 num_packets, gfp_t gfp)
{
 struct sk_buff *msg;

 trace_cfg80211_cqm_pktloss_notify(dev, peer, num_packets);

 msg = cfg80211_prepare_cqm(dev, peer, gfp);
 if (!msg)
  return;

 if (nla_put_u32(msg, NL80211_ATTR_CQM_PKT_LOSS_EVENT, num_packets))
  goto nla_put_failure;

 cfg80211_send_cqm(msg, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
