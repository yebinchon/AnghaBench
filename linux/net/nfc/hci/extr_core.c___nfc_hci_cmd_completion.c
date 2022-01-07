
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int msg_tx_work; TYPE_1__* cmd_pending_msg; int cmd_timer; } ;
struct TYPE_2__ {int cb_context; int (* cb ) (int ,struct sk_buff*,int) ;} ;


 int del_timer_sync (int *) ;
 int kfree (TYPE_1__*) ;
 int kfree_skb (struct sk_buff*) ;
 int schedule_work (int *) ;
 int stub1 (int ,struct sk_buff*,int) ;

__attribute__((used)) static void __nfc_hci_cmd_completion(struct nfc_hci_dev *hdev, int err,
         struct sk_buff *skb)
{
 del_timer_sync(&hdev->cmd_timer);

 if (hdev->cmd_pending_msg->cb)
  hdev->cmd_pending_msg->cb(hdev->cmd_pending_msg->cb_context,
       skb, err);
 else
  kfree_skb(skb);

 kfree(hdev->cmd_pending_msg);
 hdev->cmd_pending_msg = ((void*)0);

 schedule_work(&hdev->msg_tx_work);
}
