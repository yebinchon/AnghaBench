
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_write_auth_payload_to {int handle; scalar_t__ status; } ;
struct hci_dev {int name; } ;
struct hci_conn {int auth_payload_timeout; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_OP_WRITE_AUTH_PAYLOAD_TO ;
 int __le16_to_cpu (int ) ;
 int get_unaligned_le16 (void*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 void* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_write_auth_payload_timeout(struct hci_dev *hdev,
           struct sk_buff *skb)
{
 struct hci_rp_write_auth_payload_to *rp = (void *)skb->data;
 struct hci_conn *conn;
 void *sent;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 sent = hci_sent_cmd_data(hdev, HCI_OP_WRITE_AUTH_PAYLOAD_TO);
 if (!sent)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(rp->handle));
 if (conn)
  conn->auth_payload_timeout = get_unaligned_le16(sent + 2);

 hci_dev_unlock(hdev);
}
