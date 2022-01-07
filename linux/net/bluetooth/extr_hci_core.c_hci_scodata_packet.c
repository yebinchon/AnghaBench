
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct hci_sco_hdr {int handle; } ;
struct TYPE_2__ {int sco_rx; } ;
struct hci_dev {TYPE_1__ stat; int name; } ;
struct hci_conn {int dummy; } ;
typedef int __u16 ;


 int BT_DBG (char*,int ,int ,int ) ;
 int HCI_SCO_HDR_SIZE ;
 int __le16_to_cpu (int ) ;
 int bt_dev_err (struct hci_dev*,char*,int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 int sco_recv_scodata (struct hci_conn*,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;

__attribute__((used)) static void hci_scodata_packet(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_sco_hdr *hdr = (void *) skb->data;
 struct hci_conn *conn;
 __u16 handle;

 skb_pull(skb, HCI_SCO_HDR_SIZE);

 handle = __le16_to_cpu(hdr->handle);

 BT_DBG("%s len %d handle 0x%4.4x", hdev->name, skb->len, handle);

 hdev->stat.sco_rx++;

 hci_dev_lock(hdev);
 conn = hci_conn_hash_lookup_handle(hdev, handle);
 hci_dev_unlock(hdev);

 if (conn) {

  sco_recv_scodata(conn, skb);
  return;
 } else {
  bt_dev_err(hdev, "SCO packet for unknown connection handle %d",
      handle);
 }

 kfree_skb(skb);
}
