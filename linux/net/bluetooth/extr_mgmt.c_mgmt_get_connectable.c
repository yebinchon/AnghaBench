
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgmt_pending_cmd {struct mgmt_mode* param; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int dummy; } ;


 int HCI_CONNECTABLE ;
 int MGMT_OP_SET_CONNECTABLE ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

bool mgmt_get_connectable(struct hci_dev *hdev)
{
 struct mgmt_pending_cmd *cmd;




 cmd = pending_find(MGMT_OP_SET_CONNECTABLE, hdev);
 if (cmd) {
  struct mgmt_mode *cp = cmd->param;

  return cp->val;
 }

 return hci_dev_test_flag(hdev, HCI_CONNECTABLE);
}
