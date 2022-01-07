
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int wiphy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int wiphy_idx; } ;
struct cfg80211_pmsr_result {int addr; } ;
struct cfg80211_pmsr_request {int nl_portid; int cookie; } ;
typedef int gfp_t ;


 int NL80211_ATTR_COOKIE ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_PEER_MEASUREMENT_RESULT ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 int nl80211_pmsr_send_result (struct sk_buff*,struct cfg80211_pmsr_result*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int pr_err_ratelimited (char*) ;
 int trace_cfg80211_pmsr_report (int ,struct wireless_dev*,int ,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_pmsr_report(struct wireless_dev *wdev,
     struct cfg80211_pmsr_request *req,
     struct cfg80211_pmsr_result *result,
     gfp_t gfp)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct sk_buff *msg;
 void *hdr;
 int err;

 trace_cfg80211_pmsr_report(wdev->wiphy, wdev, req->cookie,
       result->addr);






 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_PEER_MEASUREMENT_RESULT);
 if (!hdr)
  goto free;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
         NL80211_ATTR_PAD))
  goto free;

 if (nla_put_u64_64bit(msg, NL80211_ATTR_COOKIE, req->cookie,
         NL80211_ATTR_PAD))
  goto free;

 err = nl80211_pmsr_send_result(msg, result);
 if (err) {
  pr_err_ratelimited("peer measurement result: message didn't fit!");
  goto free;
 }

 genlmsg_end(msg, hdr);
 genlmsg_unicast(wiphy_net(wdev->wiphy), msg, req->nl_portid);
 return;
free:
 nlmsg_free(msg);
}
