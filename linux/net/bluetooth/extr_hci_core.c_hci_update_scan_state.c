
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int cur_adv_instance; int name; } ;


 int BT_DBG (char*,int ,int) ;
 int HCI_BREDR_ENABLED ;
 int HCI_CONNECTABLE ;
 int HCI_DISCOVERABLE ;
 int HCI_LE_ENABLED ;
 int HCI_LIMITED_DISCOVERABLE ;
 int HCI_MGMT ;
 int SCAN_INQUIRY ;
 int SCAN_PAGE ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_set_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_update_adv_data (struct hci_dev*,int ) ;
 int mgmt_new_settings (struct hci_dev*) ;

__attribute__((used)) static void hci_update_scan_state(struct hci_dev *hdev, u8 scan)
{
 bool conn_changed, discov_changed;

 BT_DBG("%s scan 0x%02x", hdev->name, scan);

 if ((scan & SCAN_PAGE))
  conn_changed = !hci_dev_test_and_set_flag(hdev,
         HCI_CONNECTABLE);
 else
  conn_changed = hci_dev_test_and_clear_flag(hdev,
          HCI_CONNECTABLE);

 if ((scan & SCAN_INQUIRY)) {
  discov_changed = !hci_dev_test_and_set_flag(hdev,
           HCI_DISCOVERABLE);
 } else {
  hci_dev_clear_flag(hdev, HCI_LIMITED_DISCOVERABLE);
  discov_changed = hci_dev_test_and_clear_flag(hdev,
            HCI_DISCOVERABLE);
 }

 if (!hci_dev_test_flag(hdev, HCI_MGMT))
  return;

 if (conn_changed || discov_changed) {

  hci_dev_set_flag(hdev, HCI_BREDR_ENABLED);

  if (hci_dev_test_flag(hdev, HCI_LE_ENABLED))
   hci_req_update_adv_data(hdev, hdev->cur_adv_instance);

  mgmt_new_settings(hdev);
 }
}
