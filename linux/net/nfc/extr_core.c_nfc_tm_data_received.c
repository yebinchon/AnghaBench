
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_dev {int dep_link_up; } ;


 int ENOLINK ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_llcp_data_received (struct nfc_dev*,struct sk_buff*) ;

int nfc_tm_data_received(struct nfc_dev *dev, struct sk_buff *skb)
{

 if (dev->dep_link_up == 0) {
  kfree_skb(skb);
  return -ENOLINK;
 }

 return nfc_llcp_data_received(dev, skb);
}
