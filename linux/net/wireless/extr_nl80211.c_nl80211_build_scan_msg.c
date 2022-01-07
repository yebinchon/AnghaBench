
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;


 int GFP_KERNEL ;
 int NL80211_CMD_NEW_SCAN_RESULTS ;
 int NL80211_CMD_SCAN_ABORTED ;
 int NLMSG_DEFAULT_SIZE ;
 scalar_t__ nl80211_prep_scan_msg (struct sk_buff*,struct cfg80211_registered_device*,struct wireless_dev*,int ,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

struct sk_buff *nl80211_build_scan_msg(struct cfg80211_registered_device *rdev,
           struct wireless_dev *wdev, bool aborted)
{
 struct sk_buff *msg;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return ((void*)0);

 if (nl80211_prep_scan_msg(msg, rdev, wdev, 0, 0, 0,
      aborted ? NL80211_CMD_SCAN_ABORTED :
         NL80211_CMD_NEW_SCAN_RESULTS) < 0) {
  nlmsg_free(msg);
  return ((void*)0);
 }

 return msg;
}
