
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_pkt_type_change {int pkt_type; int status; int handle; } ;
struct hci_dev {int name; } ;
struct hci_conn {int pkt_type; } ;


 int BT_DBG (char*,int ,int ) ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static void hci_pkt_type_change_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_pkt_type_change *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn && !ev->status)
  conn->pkt_type = __le16_to_cpu(ev->pkt_type);

 hci_dev_unlock(hdev);
}
