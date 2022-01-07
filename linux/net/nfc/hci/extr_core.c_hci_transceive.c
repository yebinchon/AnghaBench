
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int data; } ;
struct nfc_target {int hci_reader_gate; int idx; } ;
struct nfc_hci_dev {TYPE_1__* ops; void* async_cb_context; int async_cb; int async_cb_type; } ;
struct nfc_dev {int dummy; } ;
typedef int data_exchange_cb_t ;
struct TYPE_2__ {int (* im_transceive ) (struct nfc_hci_dev*,struct nfc_target*,struct sk_buff*,int ,void*) ;} ;


 int ENOTSUPP ;
 int HCI_CB_TYPE_TRANSCEIVE ;


 int NFC_HCI_WR_XCHG_DATA ;
 int hci_transceive_cb ;
 int kfree_skb (struct sk_buff*) ;
 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_hci_send_cmd_async (struct nfc_hci_dev*,int,int ,int ,int ,int ,struct nfc_hci_dev*) ;
 int pr_debug (char*,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int stub1 (struct nfc_hci_dev*,struct nfc_target*,struct sk_buff*,int ,void*) ;
 int stub2 (struct nfc_hci_dev*,struct nfc_target*,struct sk_buff*,int ,void*) ;

__attribute__((used)) static int hci_transceive(struct nfc_dev *nfc_dev, struct nfc_target *target,
     struct sk_buff *skb, data_exchange_cb_t cb,
     void *cb_context)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(nfc_dev);
 int r;

 pr_debug("target_idx=%d\n", target->idx);

 switch (target->hci_reader_gate) {
 case 129:
 case 128:
  if (hdev->ops->im_transceive) {
   r = hdev->ops->im_transceive(hdev, target, skb, cb,
           cb_context);
   if (r <= 0)
    break;
  }

  *(u8 *)skb_push(skb, 1) = 0;

  hdev->async_cb_type = HCI_CB_TYPE_TRANSCEIVE;
  hdev->async_cb = cb;
  hdev->async_cb_context = cb_context;

  r = nfc_hci_send_cmd_async(hdev, target->hci_reader_gate,
        NFC_HCI_WR_XCHG_DATA, skb->data,
        skb->len, hci_transceive_cb, hdev);
  break;
 default:
  if (hdev->ops->im_transceive) {
   r = hdev->ops->im_transceive(hdev, target, skb, cb,
           cb_context);
   if (r == 1)
    r = -ENOTSUPP;
  } else {
   r = -ENOTSUPP;
  }
  break;
 }

 kfree_skb(skb);

 return r;
}
