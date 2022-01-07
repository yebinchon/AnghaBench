
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct nfc_dev {int cur_cmd_info; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_reply (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (scalar_t__,int ,int) ;

int nfc_vendor_cmd_reply(struct sk_buff *skb)
{
 struct nfc_dev *dev = ((void **)skb->cb)[0];
 void *hdr = ((void **)skb->cb)[1];


 memset(skb->cb, 0, sizeof(skb->cb));

 if (WARN_ON(!dev->cur_cmd_info)) {
  kfree_skb(skb);
  return -EINVAL;
 }

 genlmsg_end(skb, hdr);
 return genlmsg_reply(skb, dev->cur_cmd_info);
}
