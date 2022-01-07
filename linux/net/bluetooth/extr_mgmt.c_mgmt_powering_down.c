
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgmt_pending_cmd {struct mgmt_mode* param; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int dummy; } ;


 int MGMT_OP_SET_POWERED ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

bool mgmt_powering_down(struct hci_dev *hdev)
{
 struct mgmt_pending_cmd *cmd;
 struct mgmt_mode *cp;

 cmd = pending_find(MGMT_OP_SET_POWERED, hdev);
 if (!cmd)
  return 0;

 cp = cmd->param;
 if (!cp->val)
  return 1;

 return 0;
}
