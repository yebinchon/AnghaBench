
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct hci_request {int err; int cmd_q; struct hci_dev* hdev; } ;
struct hci_dev {int name; } ;
struct TYPE_3__ {int req_event; int req_flags; } ;
struct TYPE_4__ {TYPE_1__ hci; } ;


 int BT_DBG (char*,int ,int ,int ) ;
 int ENOMEM ;
 int HCI_REQ_START ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 int bt_dev_err (struct hci_dev*,char*,int ) ;
 struct sk_buff* hci_prepare_cmd (struct hci_dev*,int ,int ,void const*) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void hci_req_add_ev(struct hci_request *req, u16 opcode, u32 plen,
      const void *param, u8 event)
{
 struct hci_dev *hdev = req->hdev;
 struct sk_buff *skb;

 BT_DBG("%s opcode 0x%4.4x plen %d", hdev->name, opcode, plen);




 if (req->err)
  return;

 skb = hci_prepare_cmd(hdev, opcode, plen, param);
 if (!skb) {
  bt_dev_err(hdev, "no memory for command (opcode 0x%4.4x)",
      opcode);
  req->err = -ENOMEM;
  return;
 }

 if (skb_queue_empty(&req->cmd_q))
  bt_cb(skb)->hci.req_flags |= HCI_REQ_START;

 bt_cb(skb)->hci.req_event = event;

 skb_queue_tail(&req->cmd_q, skb);
}
