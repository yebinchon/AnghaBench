
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;} ;
struct hci_dev {int dummy; } ;
typedef int bdaddr_t ;


 int MGMT_OP_PIN_CODE_NEG_REPLY ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (int ) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

void mgmt_pin_code_neg_reply_complete(struct hci_dev *hdev, bdaddr_t *bdaddr,
          u8 status)
{
 struct mgmt_pending_cmd *cmd;

 cmd = pending_find(MGMT_OP_PIN_CODE_NEG_REPLY, hdev);
 if (!cmd)
  return;

 cmd->cmd_complete(cmd, mgmt_status(status));
 mgmt_pending_remove(cmd);
}
