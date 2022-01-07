
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct hci_dev {int (* send ) (struct hci_dev*,struct sk_buff*) ;int flags; int promisc; int name; } ;


 int BT_DBG (char*,int ,int ,int ) ;
 int HCI_RUNNING ;
 int __net_timestamp (struct sk_buff*) ;
 scalar_t__ atomic_read (int *) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int hci_send_to_monitor (struct hci_dev*,struct sk_buff*) ;
 int hci_send_to_sock (struct hci_dev*,struct sk_buff*) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int stub1 (struct hci_dev*,struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hci_send_frame(struct hci_dev *hdev, struct sk_buff *skb)
{
 int err;

 BT_DBG("%s type %d len %d", hdev->name, hci_skb_pkt_type(skb),
        skb->len);


 __net_timestamp(skb);


 hci_send_to_monitor(hdev, skb);

 if (atomic_read(&hdev->promisc)) {

  hci_send_to_sock(hdev, skb);
 }


 skb_orphan(skb);

 if (!test_bit(HCI_RUNNING, &hdev->flags)) {
  kfree_skb(skb);
  return;
 }

 err = hdev->send(hdev, skb);
 if (err < 0) {
  bt_dev_err(hdev, "sending frame failed (%d)", err);
  kfree_skb(skb);
 }
}
