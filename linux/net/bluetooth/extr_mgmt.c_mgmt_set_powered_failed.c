
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {int sk; } ;
struct hci_dev {int id; } ;


 int ERFKILL ;
 int MGMT_OP_SET_POWERED ;
 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_RFKILLED ;
 int mgmt_cmd_status (int ,int ,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

void mgmt_set_powered_failed(struct hci_dev *hdev, int err)
{
 struct mgmt_pending_cmd *cmd;
 u8 status;

 cmd = pending_find(MGMT_OP_SET_POWERED, hdev);
 if (!cmd)
  return;

 if (err == -ERFKILL)
  status = MGMT_STATUS_RFKILLED;
 else
  status = MGMT_STATUS_FAILED;

 mgmt_cmd_status(cmd->sk, hdev->id, MGMT_OP_SET_POWERED, status);

 mgmt_pending_remove(cmd);
}
