
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int pmsr_lock; int wiphy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int wiphy_idx; } ;
struct cfg80211_pmsr_request {int list; int nl_portid; int cookie; } ;
typedef int gfp_t ;


 int NL80211_ATTR_COOKIE ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_PEER_MEASUREMENT_COMPLETE ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 int kfree (struct cfg80211_pmsr_request*) ;
 int list_del (int *) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int trace_cfg80211_pmsr_complete (int ,struct wireless_dev*,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_pmsr_complete(struct wireless_dev *wdev,
       struct cfg80211_pmsr_request *req,
       gfp_t gfp)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct sk_buff *msg;
 void *hdr;

 trace_cfg80211_pmsr_complete(wdev->wiphy, wdev, req->cookie);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  goto free_request;

 hdr = nl80211hdr_put(msg, 0, 0, 0,
        NL80211_CMD_PEER_MEASUREMENT_COMPLETE);
 if (!hdr)
  goto free_msg;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
         NL80211_ATTR_PAD))
  goto free_msg;

 if (nla_put_u64_64bit(msg, NL80211_ATTR_COOKIE, req->cookie,
         NL80211_ATTR_PAD))
  goto free_msg;

 genlmsg_end(msg, hdr);
 genlmsg_unicast(wiphy_net(wdev->wiphy), msg, req->nl_portid);
 goto free_request;
free_msg:
 nlmsg_free(msg);
free_request:
 spin_lock_bh(&wdev->pmsr_lock);
 list_del(&req->list);
 spin_unlock_bh(&wdev->pmsr_lock);
 kfree(req);
}
