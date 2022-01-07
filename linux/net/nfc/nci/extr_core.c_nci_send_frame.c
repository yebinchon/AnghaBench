
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct nci_dev {TYPE_1__* ops; int nfc_dev; } ;
struct TYPE_2__ {int (* send ) (struct nci_dev*,struct sk_buff*) ;} ;


 int ENODEV ;
 int NFC_DIRECTION_TX ;
 int RAW_PAYLOAD_NCI ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_send_to_raw_sock (int ,struct sk_buff*,int ,int ) ;
 int pr_debug (char*,int ) ;
 int skb_orphan (struct sk_buff*) ;
 int stub1 (struct nci_dev*,struct sk_buff*) ;

int nci_send_frame(struct nci_dev *ndev, struct sk_buff *skb)
{
 pr_debug("len %d\n", skb->len);

 if (!ndev) {
  kfree_skb(skb);
  return -ENODEV;
 }


 skb_orphan(skb);


 nfc_send_to_raw_sock(ndev->nfc_dev, skb,
        RAW_PAYLOAD_NCI, NFC_DIRECTION_TX);

 return ndev->ops->send(ndev, skb);
}
