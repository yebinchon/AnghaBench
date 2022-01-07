
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hci_dev {int rx_work; int workqueue; int rx_q; int flags; } ;
struct TYPE_2__ {int incoming; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ HCI_ACLDATA_PKT ;
 scalar_t__ HCI_EVENT_PKT ;
 int HCI_INIT ;
 scalar_t__ HCI_SCODATA_PKT ;
 int HCI_UP ;
 int __net_timestamp (struct sk_buff*) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 scalar_t__ hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int queue_work (int ,int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;

int hci_recv_frame(struct hci_dev *hdev, struct sk_buff *skb)
{
 if (!hdev || (!test_bit(HCI_UP, &hdev->flags)
        && !test_bit(HCI_INIT, &hdev->flags))) {
  kfree_skb(skb);
  return -ENXIO;
 }

 if (hci_skb_pkt_type(skb) != HCI_EVENT_PKT &&
     hci_skb_pkt_type(skb) != HCI_ACLDATA_PKT &&
     hci_skb_pkt_type(skb) != HCI_SCODATA_PKT) {
  kfree_skb(skb);
  return -EINVAL;
 }


 bt_cb(skb)->incoming = 1;


 __net_timestamp(skb);

 skb_queue_tail(&hdev->rx_q, skb);
 queue_work(hdev->workqueue, &hdev->rx_work);

 return 0;
}
