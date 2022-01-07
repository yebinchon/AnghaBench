
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_llcp_local {int dummy; } ;
struct nfc_dev {int dummy; } ;


 int ENODEV ;
 int __nfc_llcp_recv (struct nfc_llcp_local*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct nfc_llcp_local* nfc_llcp_find_local (struct nfc_dev*) ;

int nfc_llcp_data_received(struct nfc_dev *dev, struct sk_buff *skb)
{
 struct nfc_llcp_local *local;

 local = nfc_llcp_find_local(dev);
 if (local == ((void*)0)) {
  kfree_skb(skb);
  return -ENODEV;
 }

 __nfc_llcp_recv(local, skb);

 return 0;
}
