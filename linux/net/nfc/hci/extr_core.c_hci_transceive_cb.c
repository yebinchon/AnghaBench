
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nfc_hci_dev {int async_cb_type; int async_cb_context; int (* async_cb ) (int ,struct sk_buff*,int) ;} ;



 int kfree_skb (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;
 int stub1 (int ,struct sk_buff*,int) ;

__attribute__((used)) static void hci_transceive_cb(void *context, struct sk_buff *skb, int err)
{
 struct nfc_hci_dev *hdev = context;

 switch (hdev->async_cb_type) {
 case 128:





  if (err == 0)
   skb_trim(skb, skb->len - 1);

  hdev->async_cb(hdev->async_cb_context, skb, err);
  break;
 default:
  if (err == 0)
   kfree_skb(skb);
  break;
 }
}
