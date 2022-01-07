
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;
struct hci_cp_disconnect {int handle; } ;
struct hci_conn {int dst_type; int type; int dst; } ;


 int HCI_OP_DISCONNECT ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_disconnect* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int mgmt_disconnect_failed (struct hci_dev*,int *,int ,int ,int ) ;

__attribute__((used)) static void hci_cs_disconnect(struct hci_dev *hdev, u8 status)
{
 struct hci_cp_disconnect *cp;
 struct hci_conn *conn;

 if (!status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_DISCONNECT);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(cp->handle));
 if (conn)
  mgmt_disconnect_failed(hdev, &conn->dst, conn->type,
           conn->dst_type, status);

 hci_dev_unlock(hdev);
}
