
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int lock; } ;
struct hci_dev {TYPE_3__ cmd_q; struct sk_buff* sent_cmd; int flags; } ;
typedef scalar_t__ hci_req_complete_t ;
typedef int hci_req_complete_skb_t ;
struct TYPE_5__ {int req_flags; scalar_t__ req_complete; int req_complete_skb; } ;
struct TYPE_6__ {TYPE_1__ hci; } ;


 int BT_DBG (char*,scalar_t__,int ) ;
 int HCI_CMD_PENDING ;
 int HCI_INIT ;
 scalar_t__ HCI_OP_RESET ;
 int HCI_REQ_SKB ;
 int HCI_REQ_START ;
 struct sk_buff* __skb_dequeue (TYPE_3__*) ;
 int __skb_queue_head (TYPE_3__*,struct sk_buff*) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_req_is_complete (struct hci_dev*) ;
 int hci_resend_last (struct hci_dev*) ;
 int hci_sent_cmd_data (struct hci_dev*,scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void hci_req_cmd_complete(struct hci_dev *hdev, u16 opcode, u8 status,
     hci_req_complete_t *req_complete,
     hci_req_complete_skb_t *req_complete_skb)
{
 struct sk_buff *skb;
 unsigned long flags;

 BT_DBG("opcode 0x%04x status 0x%02x", opcode, status);




 if (!hci_sent_cmd_data(hdev, opcode)) {






  if (test_bit(HCI_INIT, &hdev->flags) && opcode == HCI_OP_RESET)
   hci_resend_last(hdev);

  return;
 }


 hci_dev_clear_flag(hdev, HCI_CMD_PENDING);




 if (!status && !hci_req_is_complete(hdev))
  return;





 if (bt_cb(hdev->sent_cmd)->hci.req_flags & HCI_REQ_SKB) {
  *req_complete_skb = bt_cb(hdev->sent_cmd)->hci.req_complete_skb;
  return;
 }

 if (bt_cb(hdev->sent_cmd)->hci.req_complete) {
  *req_complete = bt_cb(hdev->sent_cmd)->hci.req_complete;
  return;
 }


 spin_lock_irqsave(&hdev->cmd_q.lock, flags);
 while ((skb = __skb_dequeue(&hdev->cmd_q))) {
  if (bt_cb(skb)->hci.req_flags & HCI_REQ_START) {
   __skb_queue_head(&hdev->cmd_q, skb);
   break;
  }

  if (bt_cb(skb)->hci.req_flags & HCI_REQ_SKB)
   *req_complete_skb = bt_cb(skb)->hci.req_complete_skb;
  else
   *req_complete = bt_cb(skb)->hci.req_complete;
  kfree_skb(skb);
 }
 spin_unlock_irqrestore(&hdev->cmd_q.lock, flags);
}
