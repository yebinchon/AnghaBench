
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {struct mgmt_mode* param; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int dummy; } ;


 int HCI_DISCOVERABLE ;
 int HCI_LIMITED_DISCOVERABLE ;
 int LE_AD_GENERAL ;
 int LE_AD_LIMITED ;
 int MGMT_OP_SET_DISCOVERABLE ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

u8 mgmt_get_adv_discov_flags(struct hci_dev *hdev)
{
 struct mgmt_pending_cmd *cmd;




 cmd = pending_find(MGMT_OP_SET_DISCOVERABLE, hdev);
 if (cmd) {
  struct mgmt_mode *cp = cmd->param;
  if (cp->val == 0x01)
   return LE_AD_GENERAL;
  else if (cp->val == 0x02)
   return LE_AD_LIMITED;
 } else {
  if (hci_dev_test_flag(hdev, HCI_LIMITED_DISCOVERABLE))
   return LE_AD_LIMITED;
  else if (hci_dev_test_flag(hdev, HCI_DISCOVERABLE))
   return LE_AD_GENERAL;
 }

 return 0;
}
