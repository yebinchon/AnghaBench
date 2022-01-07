
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int gfp_t ;


 int NL80211_ATTR_CQM_TXE_INTVL ;
 int NL80211_ATTR_CQM_TXE_PKTS ;
 int NL80211_ATTR_CQM_TXE_RATE ;
 struct sk_buff* cfg80211_prepare_cqm (struct net_device*,int const*,int ) ;
 int cfg80211_send_cqm (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;

void cfg80211_cqm_txe_notify(struct net_device *dev,
        const u8 *peer, u32 num_packets,
        u32 rate, u32 intvl, gfp_t gfp)
{
 struct sk_buff *msg;

 msg = cfg80211_prepare_cqm(dev, peer, gfp);
 if (!msg)
  return;

 if (nla_put_u32(msg, NL80211_ATTR_CQM_TXE_PKTS, num_packets))
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_ATTR_CQM_TXE_RATE, rate))
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_ATTR_CQM_TXE_INTVL, intvl))
  goto nla_put_failure;

 cfg80211_send_cqm(msg, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
