
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;} ;
struct hci_dev {int name; } ;
struct hci_cp_read_clock {int handle; scalar_t__ which; } ;
struct hci_conn {int dummy; } ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_OP_READ_CLOCK ;
 int MGMT_OP_GET_CLOCK_INFO ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_read_clock* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (int ) ;
 struct mgmt_pending_cmd* pending_find_data (int ,struct hci_dev*,struct hci_conn*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

__attribute__((used)) static void get_clock_info_complete(struct hci_dev *hdev, u8 status, u16 opcode)
{
 struct hci_cp_read_clock *hci_cp;
 struct mgmt_pending_cmd *cmd;
 struct hci_conn *conn;

 BT_DBG("%s status %u", hdev->name, status);

 hci_dev_lock(hdev);

 hci_cp = hci_sent_cmd_data(hdev, HCI_OP_READ_CLOCK);
 if (!hci_cp)
  goto unlock;

 if (hci_cp->which) {
  u16 handle = __le16_to_cpu(hci_cp->handle);
  conn = hci_conn_hash_lookup_handle(hdev, handle);
 } else {
  conn = ((void*)0);
 }

 cmd = pending_find_data(MGMT_OP_GET_CLOCK_INFO, hdev, conn);
 if (!cmd)
  goto unlock;

 cmd->cmd_complete(cmd, mgmt_status(status));
 mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
}
