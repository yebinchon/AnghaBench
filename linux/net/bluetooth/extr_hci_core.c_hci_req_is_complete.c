
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hci_dev {int cmd_q; } ;
struct TYPE_3__ {int req_flags; } ;
struct TYPE_4__ {TYPE_1__ hci; } ;


 int HCI_REQ_START ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static bool hci_req_is_complete(struct hci_dev *hdev)
{
 struct sk_buff *skb;

 skb = skb_peek(&hdev->cmd_q);
 if (!skb)
  return 1;

 return (bt_cb(skb)->hci.req_flags & HCI_REQ_START);
}
