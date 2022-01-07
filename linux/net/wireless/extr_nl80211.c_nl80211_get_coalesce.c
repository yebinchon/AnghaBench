
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct cfg80211_registered_device** user_ptr; } ;
struct TYPE_2__ {int coalesce; } ;
struct cfg80211_registered_device {scalar_t__ coalesce; TYPE_1__ wiphy; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int NL80211_CMD_GET_COALESCE ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 scalar_t__ nl80211_send_coalesce_rules (struct sk_buff*,struct cfg80211_registered_device*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int nl80211_get_coalesce(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct sk_buff *msg;
 void *hdr;

 if (!rdev->wiphy.coalesce)
  return -EOPNOTSUPP;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 hdr = nl80211hdr_put(msg, info->snd_portid, info->snd_seq, 0,
        NL80211_CMD_GET_COALESCE);
 if (!hdr)
  goto nla_put_failure;

 if (rdev->coalesce && nl80211_send_coalesce_rules(msg, rdev))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return genlmsg_reply(msg, info);

nla_put_failure:
 nlmsg_free(msg);
 return -ENOBUFS;
}
