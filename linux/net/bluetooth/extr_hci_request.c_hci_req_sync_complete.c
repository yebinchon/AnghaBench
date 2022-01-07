
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct hci_dev {scalar_t__ req_status; int req_wait_q; int req_skb; int req_result; int name; } ;


 int BT_DBG (char*,int ,int ) ;
 scalar_t__ HCI_REQ_DONE ;
 scalar_t__ HCI_REQ_PEND ;
 int skb_get (struct sk_buff*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void hci_req_sync_complete(struct hci_dev *hdev, u8 result, u16 opcode,
      struct sk_buff *skb)
{
 BT_DBG("%s result 0x%2.2x", hdev->name, result);

 if (hdev->req_status == HCI_REQ_PEND) {
  hdev->req_result = result;
  hdev->req_status = HCI_REQ_DONE;
  if (skb)
   hdev->req_skb = skb_get(skb);
  wake_up_interruptible(&hdev->req_wait_q);
 }
}
