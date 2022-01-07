
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int gfp_t ;


 int NL80211_ATTR_CQM_BEACON_LOSS_EVENT ;
 struct sk_buff* cfg80211_prepare_cqm (struct net_device*,int *,int ) ;
 int cfg80211_send_cqm (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 int nlmsg_free (struct sk_buff*) ;

void cfg80211_cqm_beacon_loss_notify(struct net_device *dev, gfp_t gfp)
{
 struct sk_buff *msg;

 msg = cfg80211_prepare_cqm(dev, ((void*)0), gfp);
 if (!msg)
  return;

 if (nla_put_flag(msg, NL80211_ATTR_CQM_BEACON_LOSS_EVENT))
  goto nla_put_failure;

 cfg80211_send_cqm(msg, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
