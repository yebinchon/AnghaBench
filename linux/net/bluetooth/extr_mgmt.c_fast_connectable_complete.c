
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct mgmt_pending_cmd {int sk; struct mgmt_mode* param; } ;
struct mgmt_mode {scalar_t__ val; } ;
struct hci_dev {int id; } ;


 int BT_DBG (char*,scalar_t__) ;
 int HCI_FAST_CONNECTABLE ;
 int MGMT_OP_SET_FAST_CONNECTABLE ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_cmd_status (int ,int ,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (scalar_t__) ;
 int new_settings (struct hci_dev*,int ) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;
 int send_settings_rsp (int ,int ,struct hci_dev*) ;

__attribute__((used)) static void fast_connectable_complete(struct hci_dev *hdev, u8 status,
          u16 opcode)
{
 struct mgmt_pending_cmd *cmd;

 BT_DBG("status 0x%02x", status);

 hci_dev_lock(hdev);

 cmd = pending_find(MGMT_OP_SET_FAST_CONNECTABLE, hdev);
 if (!cmd)
  goto unlock;

 if (status) {
  mgmt_cmd_status(cmd->sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
           mgmt_status(status));
 } else {
  struct mgmt_mode *cp = cmd->param;

  if (cp->val)
   hci_dev_set_flag(hdev, HCI_FAST_CONNECTABLE);
  else
   hci_dev_clear_flag(hdev, HCI_FAST_CONNECTABLE);

  send_settings_rsp(cmd->sk, MGMT_OP_SET_FAST_CONNECTABLE, hdev);
  new_settings(hdev, cmd->sk);
 }

 mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
}
