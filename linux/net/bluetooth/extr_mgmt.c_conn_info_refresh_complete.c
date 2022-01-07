
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;} ;
struct hci_dev {int dummy; } ;
struct hci_cp_read_rssi {int handle; } ;
struct hci_conn {int dummy; } ;


 int BT_DBG (char*,int ) ;
 int HCI_OP_READ_RSSI ;
 int HCI_OP_READ_TX_POWER ;
 int MGMT_OP_GET_CONN_INFO ;
 int MGMT_STATUS_SUCCESS ;
 int __le16_to_cpu (int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_read_rssi* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (int ) ;
 struct mgmt_pending_cmd* pending_find_data (int ,struct hci_dev*,struct hci_conn*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

__attribute__((used)) static void conn_info_refresh_complete(struct hci_dev *hdev, u8 hci_status,
           u16 opcode)
{
 struct hci_cp_read_rssi *cp;
 struct mgmt_pending_cmd *cmd;
 struct hci_conn *conn;
 u16 handle;
 u8 status;

 BT_DBG("status 0x%02x", hci_status);

 hci_dev_lock(hdev);
 cp = hci_sent_cmd_data(hdev, HCI_OP_READ_RSSI);
 if (!cp) {
  cp = hci_sent_cmd_data(hdev, HCI_OP_READ_TX_POWER);
  status = MGMT_STATUS_SUCCESS;
 } else {
  status = mgmt_status(hci_status);
 }

 if (!cp) {
  bt_dev_err(hdev, "invalid sent_cmd in conn_info response");
  goto unlock;
 }

 handle = __le16_to_cpu(cp->handle);
 conn = hci_conn_hash_lookup_handle(hdev, handle);
 if (!conn) {
  bt_dev_err(hdev, "unknown handle (%d) in conn_info response",
      handle);
  goto unlock;
 }

 cmd = pending_find_data(MGMT_OP_GET_CONN_INFO, hdev, conn);
 if (!cmd)
  goto unlock;

 cmd->cmd_complete(cmd, status);
 mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
}
