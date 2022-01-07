
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int cmd_work; int workqueue; int cmd_q; TYPE_1__* sent_cmd; } ;
struct hci_command_hdr {int opcode; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int GFP_KERNEL ;
 scalar_t__ HCI_OP_RESET ;
 scalar_t__ __le16_to_cpu (int ) ;
 int queue_work (int ,int *) ;
 struct sk_buff* skb_clone (TYPE_1__*,int ) ;
 int skb_queue_head (int *,struct sk_buff*) ;

__attribute__((used)) static void hci_resend_last(struct hci_dev *hdev)
{
 struct hci_command_hdr *sent;
 struct sk_buff *skb;
 u16 opcode;

 if (!hdev->sent_cmd)
  return;

 sent = (void *) hdev->sent_cmd->data;
 opcode = __le16_to_cpu(sent->opcode);
 if (opcode == HCI_OP_RESET)
  return;

 skb = skb_clone(hdev->sent_cmd, GFP_KERNEL);
 if (!skb)
  return;

 skb_queue_head(&hdev->cmd_q, skb);
 queue_work(hdev->workqueue, &hdev->cmd_work);
}
