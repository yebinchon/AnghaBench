
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct mgmt_pending_cmd {int sk; struct mgmt_cp_set_local_name* param; } ;
struct mgmt_cp_set_local_name {int dummy; } ;
struct hci_dev {int id; } ;


 int BT_DBG (char*,scalar_t__) ;
 int HCI_LE_ADV ;
 int MGMT_ADV_FLAG_LOCAL_NAME ;
 int MGMT_OP_SET_LOCAL_NAME ;
 int adv_expire (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_cmd_complete (int ,int ,int ,int ,struct mgmt_cp_set_local_name*,int) ;
 int mgmt_cmd_status (int ,int ,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (scalar_t__) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

__attribute__((used)) static void set_name_complete(struct hci_dev *hdev, u8 status, u16 opcode)
{
 struct mgmt_cp_set_local_name *cp;
 struct mgmt_pending_cmd *cmd;

 BT_DBG("status 0x%02x", status);

 hci_dev_lock(hdev);

 cmd = pending_find(MGMT_OP_SET_LOCAL_NAME, hdev);
 if (!cmd)
  goto unlock;

 cp = cmd->param;

 if (status) {
  mgmt_cmd_status(cmd->sk, hdev->id, MGMT_OP_SET_LOCAL_NAME,
           mgmt_status(status));
 } else {
  mgmt_cmd_complete(cmd->sk, hdev->id, MGMT_OP_SET_LOCAL_NAME, 0,
      cp, sizeof(*cp));

  if (hci_dev_test_flag(hdev, HCI_LE_ADV))
   adv_expire(hdev, MGMT_ADV_FLAG_LOCAL_NAME);
 }

 mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
}
