
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mgmt_pending_cmd {int sk; struct mgmt_mode* param; int opcode; int index; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_SC_ENABLED ;
 int HCI_SC_ONLY ;
 int MGMT_OP_SET_SECURE_CONN ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_cmd_status (int ,int ,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (int ) ;
 int new_settings (struct hci_dev*,int ) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;
 int send_settings_rsp (int ,int ,struct hci_dev*) ;

__attribute__((used)) static void sc_enable_complete(struct hci_dev *hdev, u8 status, u16 opcode)
{
 struct mgmt_pending_cmd *cmd;
 struct mgmt_mode *cp;

 BT_DBG("%s status %u", hdev->name, status);

 hci_dev_lock(hdev);

 cmd = pending_find(MGMT_OP_SET_SECURE_CONN, hdev);
 if (!cmd)
  goto unlock;

 if (status) {
  mgmt_cmd_status(cmd->sk, cmd->index, cmd->opcode,
           mgmt_status(status));
  goto remove;
 }

 cp = cmd->param;

 switch (cp->val) {
 case 0x00:
  hci_dev_clear_flag(hdev, HCI_SC_ENABLED);
  hci_dev_clear_flag(hdev, HCI_SC_ONLY);
  break;
 case 0x01:
  hci_dev_set_flag(hdev, HCI_SC_ENABLED);
  hci_dev_clear_flag(hdev, HCI_SC_ONLY);
  break;
 case 0x02:
  hci_dev_set_flag(hdev, HCI_SC_ENABLED);
  hci_dev_set_flag(hdev, HCI_SC_ONLY);
  break;
 }

 send_settings_rsp(cmd->sk, MGMT_OP_SET_SECURE_CONN, hdev);
 new_settings(hdev, cmd->sk);

remove:
 mgmt_pending_remove(cmd);
unlock:
 hci_dev_unlock(hdev);
}
