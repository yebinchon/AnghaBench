
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cfg80211_sched_scan_request {int reqid; TYPE_1__* dev; int wiphy; } ;
struct TYPE_4__ {int wiphy_idx; } ;
struct TYPE_3__ {int ifindex; } ;


 int EMSGSIZE ;
 int NL80211_ATTR_COOKIE ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_WIPHY ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 TYPE_2__* wiphy_to_rdev (int ) ;

__attribute__((used)) static int
nl80211_prep_sched_scan_msg(struct sk_buff *msg,
       struct cfg80211_sched_scan_request *req, u32 cmd)
{
 void *hdr;

 hdr = nl80211hdr_put(msg, 0, 0, 0, cmd);
 if (!hdr)
  return -1;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY,
   wiphy_to_rdev(req->wiphy)->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, req->dev->ifindex) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_COOKIE, req->reqid,
         NL80211_ATTR_PAD))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
