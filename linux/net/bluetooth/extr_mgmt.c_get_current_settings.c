
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {int static_addr; int bdaddr; } ;


 int BDADDR_ANY ;
 int HCI_ADVERTISING ;
 int HCI_BONDABLE ;
 int HCI_BREDR_ENABLED ;
 int HCI_CONNECTABLE ;
 int HCI_DISCOVERABLE ;
 int HCI_FAST_CONNECTABLE ;
 int HCI_FORCE_STATIC_ADDR ;
 int HCI_HS_ENABLED ;
 int HCI_KEEP_DEBUG_KEYS ;
 int HCI_LE_ENABLED ;
 int HCI_LINK_SECURITY ;
 int HCI_PRIVACY ;
 int HCI_SC_ENABLED ;
 int HCI_SSP_ENABLED ;
 int MGMT_SETTING_ADVERTISING ;
 int MGMT_SETTING_BONDABLE ;
 int MGMT_SETTING_BREDR ;
 int MGMT_SETTING_CONNECTABLE ;
 int MGMT_SETTING_DEBUG_KEYS ;
 int MGMT_SETTING_DISCOVERABLE ;
 int MGMT_SETTING_FAST_CONNECTABLE ;
 int MGMT_SETTING_HS ;
 int MGMT_SETTING_LE ;
 int MGMT_SETTING_LINK_SECURITY ;
 int MGMT_SETTING_POWERED ;
 int MGMT_SETTING_PRIVACY ;
 int MGMT_SETTING_SECURE_CONN ;
 int MGMT_SETTING_SSP ;
 int MGMT_SETTING_STATIC_ADDRESS ;
 scalar_t__ bacmp (int *,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ hdev_is_powered (struct hci_dev*) ;

__attribute__((used)) static u32 get_current_settings(struct hci_dev *hdev)
{
 u32 settings = 0;

 if (hdev_is_powered(hdev))
  settings |= MGMT_SETTING_POWERED;

 if (hci_dev_test_flag(hdev, HCI_CONNECTABLE))
  settings |= MGMT_SETTING_CONNECTABLE;

 if (hci_dev_test_flag(hdev, HCI_FAST_CONNECTABLE))
  settings |= MGMT_SETTING_FAST_CONNECTABLE;

 if (hci_dev_test_flag(hdev, HCI_DISCOVERABLE))
  settings |= MGMT_SETTING_DISCOVERABLE;

 if (hci_dev_test_flag(hdev, HCI_BONDABLE))
  settings |= MGMT_SETTING_BONDABLE;

 if (hci_dev_test_flag(hdev, HCI_BREDR_ENABLED))
  settings |= MGMT_SETTING_BREDR;

 if (hci_dev_test_flag(hdev, HCI_LE_ENABLED))
  settings |= MGMT_SETTING_LE;

 if (hci_dev_test_flag(hdev, HCI_LINK_SECURITY))
  settings |= MGMT_SETTING_LINK_SECURITY;

 if (hci_dev_test_flag(hdev, HCI_SSP_ENABLED))
  settings |= MGMT_SETTING_SSP;

 if (hci_dev_test_flag(hdev, HCI_HS_ENABLED))
  settings |= MGMT_SETTING_HS;

 if (hci_dev_test_flag(hdev, HCI_ADVERTISING))
  settings |= MGMT_SETTING_ADVERTISING;

 if (hci_dev_test_flag(hdev, HCI_SC_ENABLED))
  settings |= MGMT_SETTING_SECURE_CONN;

 if (hci_dev_test_flag(hdev, HCI_KEEP_DEBUG_KEYS))
  settings |= MGMT_SETTING_DEBUG_KEYS;

 if (hci_dev_test_flag(hdev, HCI_PRIVACY))
  settings |= MGMT_SETTING_PRIVACY;
 if (hci_dev_test_flag(hdev, HCI_FORCE_STATIC_ADDR) ||
     !hci_dev_test_flag(hdev, HCI_BREDR_ENABLED) ||
     !bacmp(&hdev->bdaddr, BDADDR_ANY)) {
  if (bacmp(&hdev->static_addr, BDADDR_ANY))
   settings |= MGMT_SETTING_STATIC_ADDRESS;
 }

 return settings;
}
