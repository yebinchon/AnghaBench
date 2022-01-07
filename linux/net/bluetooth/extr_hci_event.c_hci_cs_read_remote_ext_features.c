
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_cp_read_remote_ext_features {int handle; } ;
struct hci_conn {scalar_t__ state; } ;
typedef int __u8 ;


 scalar_t__ BT_CONFIG ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_OP_READ_REMOTE_EXT_FEATURES ;
 int __le16_to_cpu (int ) ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_connect_cfm (struct hci_conn*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_read_remote_ext_features* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cs_read_remote_ext_features(struct hci_dev *hdev, __u8 status)
{
 struct hci_cp_read_remote_ext_features *cp;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (!status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_READ_REMOTE_EXT_FEATURES);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(cp->handle));
 if (conn) {
  if (conn->state == BT_CONFIG) {
   hci_connect_cfm(conn, status);
   hci_conn_drop(conn);
  }
 }

 hci_dev_unlock(hdev);
}
