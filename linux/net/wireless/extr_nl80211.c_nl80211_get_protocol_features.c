
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NL80211_ATTR_PROTOCOL_FEATURES ;
 int NL80211_CMD_GET_PROTOCOL_FEATURES ;
 int NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int kfree_skb (struct sk_buff*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int nl80211_get_protocol_features(struct sk_buff *skb,
      struct genl_info *info)
{
 void *hdr;
 struct sk_buff *msg;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 hdr = nl80211hdr_put(msg, info->snd_portid, info->snd_seq, 0,
        NL80211_CMD_GET_PROTOCOL_FEATURES);
 if (!hdr)
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_ATTR_PROTOCOL_FEATURES,
   NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return genlmsg_reply(msg, info);

 nla_put_failure:
 kfree_skb(msg);
 return -ENOBUFS;
}
