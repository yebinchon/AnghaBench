
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero_cod ;
struct cmd_lookup {scalar_t__ sk; struct hci_dev* member_1; int * member_0; } ;
typedef struct cmd_lookup u8 ;
struct hci_dev {int dev_class; } ;


 int HCI_MGMT_DEV_CLASS_EVENTS ;
 int HCI_UNREGISTER ;
 int MGMT_EV_CLASS_OF_DEV_CHANGED ;
 int MGMT_OP_SET_POWERED ;
 struct cmd_lookup MGMT_STATUS_INVALID_INDEX ;
 struct cmd_lookup MGMT_STATUS_NOT_POWERED ;
 int cmd_complete_rsp ;
 int ext_info_changed (struct hci_dev*,int *) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ memcmp (int ,struct cmd_lookup*,int) ;
 int mgmt_limited_event (int ,struct hci_dev*,struct cmd_lookup*,int,int ,int *) ;
 int mgmt_pending_foreach (int ,struct hci_dev*,int ,struct cmd_lookup*) ;
 int new_settings (struct hci_dev*,scalar_t__) ;
 int settings_rsp ;
 int sock_put (scalar_t__) ;

void __mgmt_power_off(struct hci_dev *hdev)
{
 struct cmd_lookup match = { ((void*)0), hdev };
 u8 status, zero_cod[] = { 0, 0, 0 };

 mgmt_pending_foreach(MGMT_OP_SET_POWERED, hdev, settings_rsp, &match);
 if (hci_dev_test_flag(hdev, HCI_UNREGISTER))
  status = MGMT_STATUS_INVALID_INDEX;
 else
  status = MGMT_STATUS_NOT_POWERED;

 mgmt_pending_foreach(0, hdev, cmd_complete_rsp, &status);

 if (memcmp(hdev->dev_class, zero_cod, sizeof(zero_cod)) != 0) {
  mgmt_limited_event(MGMT_EV_CLASS_OF_DEV_CHANGED, hdev,
       zero_cod, sizeof(zero_cod),
       HCI_MGMT_DEV_CLASS_EVENTS, ((void*)0));
  ext_info_changed(hdev, ((void*)0));
 }

 new_settings(hdev, match.sk);

 if (match.sk)
  sock_put(match.sk);
}
