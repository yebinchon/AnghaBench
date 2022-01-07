
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hci_dev {int cmd_work; int workqueue; int cmd_q; int name; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_3__ {int req_flags; } ;
struct TYPE_4__ {TYPE_1__ hci; } ;


 int BT_DBG (char*,int ,int ,int ) ;
 int ENOMEM ;
 int HCI_REQ_START ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 int bt_dev_err (struct hci_dev*,char*) ;
 struct sk_buff* hci_prepare_cmd (struct hci_dev*,int ,int ,void const*) ;
 int queue_work (int ,int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int hci_send_cmd(struct hci_dev *hdev, __u16 opcode, __u32 plen,
   const void *param)
{
 struct sk_buff *skb;

 BT_DBG("%s opcode 0x%4.4x plen %d", hdev->name, opcode, plen);

 skb = hci_prepare_cmd(hdev, opcode, plen, param);
 if (!skb) {
  bt_dev_err(hdev, "no memory for command");
  return -ENOMEM;
 }




 bt_cb(skb)->hci.req_flags |= HCI_REQ_START;

 skb_queue_tail(&hdev->cmd_q, skb);
 queue_work(hdev->workqueue, &hdev->cmd_work);

 return 0;
}
