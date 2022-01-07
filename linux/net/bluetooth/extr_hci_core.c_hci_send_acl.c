
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hci_dev {int tx_work; int workqueue; int name; } ;
struct hci_chan {int data_q; TYPE_1__* conn; } ;
typedef int __u16 ;
struct TYPE_2__ {struct hci_dev* hdev; } ;


 int BT_DBG (char*,int ,struct hci_chan*,int ) ;
 int hci_queue_acl (struct hci_chan*,int *,struct sk_buff*,int ) ;
 int queue_work (int ,int *) ;

void hci_send_acl(struct hci_chan *chan, struct sk_buff *skb, __u16 flags)
{
 struct hci_dev *hdev = chan->conn->hdev;

 BT_DBG("%s chan %p flags 0x%4.4x", hdev->name, chan, flags);

 hci_queue_acl(chan, &chan->data_q, skb, flags);

 queue_work(hdev->workqueue, &hdev->tx_work);
}
