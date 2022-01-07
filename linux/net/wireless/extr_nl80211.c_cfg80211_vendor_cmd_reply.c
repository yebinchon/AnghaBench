
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct nlattr {int dummy; } ;
struct cfg80211_registered_device {int cur_cmd_info; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_reply (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (scalar_t__,int ,int) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;

int cfg80211_vendor_cmd_reply(struct sk_buff *skb)
{
 struct cfg80211_registered_device *rdev = ((void **)skb->cb)[0];
 void *hdr = ((void **)skb->cb)[1];
 struct nlattr *data = ((void **)skb->cb)[2];


 memset(skb->cb, 0, sizeof(skb->cb));

 if (WARN_ON(!rdev->cur_cmd_info)) {
  kfree_skb(skb);
  return -EINVAL;
 }

 nla_nest_end(skb, data);
 genlmsg_end(skb, hdr);
 return genlmsg_reply(skb, rdev->cur_cmd_info);
}
