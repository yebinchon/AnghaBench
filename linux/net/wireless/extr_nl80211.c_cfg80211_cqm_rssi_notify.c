
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* cqm_config; int wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef int s32 ;
typedef int gfp_t ;
typedef enum nl80211_cqm_rssi_threshold_event { ____Placeholder_nl80211_cqm_rssi_threshold_event } nl80211_cqm_rssi_threshold_event ;
struct TYPE_2__ {int last_rssi_event_value; } ;


 int NL80211_ATTR_CQM_RSSI_LEVEL ;
 int NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT ;
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH ;
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_cqm_rssi_update (struct cfg80211_registered_device*,struct net_device*) ;
 struct sk_buff* cfg80211_prepare_cqm (struct net_device*,int *,int ) ;
 int cfg80211_send_cqm (struct sk_buff*,int ) ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 int trace_cfg80211_cqm_rssi_notify (struct net_device*,int,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_cqm_rssi_notify(struct net_device *dev,
         enum nl80211_cqm_rssi_threshold_event rssi_event,
         s32 rssi_level, gfp_t gfp)
{
 struct sk_buff *msg;
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);

 trace_cfg80211_cqm_rssi_notify(dev, rssi_event, rssi_level);

 if (WARN_ON(rssi_event != NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW &&
      rssi_event != NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH))
  return;

 if (wdev->cqm_config) {
  wdev->cqm_config->last_rssi_event_value = rssi_level;

  cfg80211_cqm_rssi_update(rdev, dev);

  if (rssi_level == 0)
   rssi_level = wdev->cqm_config->last_rssi_event_value;
 }

 msg = cfg80211_prepare_cqm(dev, ((void*)0), gfp);
 if (!msg)
  return;

 if (nla_put_u32(msg, NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT,
   rssi_event))
  goto nla_put_failure;

 if (rssi_level && nla_put_s32(msg, NL80211_ATTR_CQM_RSSI_LEVEL,
          rssi_level))
  goto nla_put_failure;

 cfg80211_send_cqm(msg, gfp);

 return;

 nla_put_failure:
 nlmsg_free(msg);
}
