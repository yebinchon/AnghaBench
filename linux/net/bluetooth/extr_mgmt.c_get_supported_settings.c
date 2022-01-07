
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {scalar_t__ hci_ver; scalar_t__ set_bdaddr; int quirks; } ;


 scalar_t__ BLUETOOTH_VER_1_2 ;
 int HCI_QUIRK_EXTERNAL_CONFIG ;
 int MGMT_SETTING_ADVERTISING ;
 int MGMT_SETTING_BONDABLE ;
 int MGMT_SETTING_BREDR ;
 int MGMT_SETTING_CONFIGURATION ;
 int MGMT_SETTING_CONNECTABLE ;
 int MGMT_SETTING_DEBUG_KEYS ;
 int MGMT_SETTING_DISCOVERABLE ;
 int MGMT_SETTING_FAST_CONNECTABLE ;
 int MGMT_SETTING_HS ;
 int MGMT_SETTING_LE ;
 int MGMT_SETTING_LINK_SECURITY ;
 int MGMT_SETTING_PHY_CONFIGURATION ;
 int MGMT_SETTING_POWERED ;
 int MGMT_SETTING_PRIVACY ;
 int MGMT_SETTING_SECURE_CONN ;
 int MGMT_SETTING_SSP ;
 int MGMT_SETTING_STATIC_ADDRESS ;
 scalar_t__ lmp_bredr_capable (struct hci_dev*) ;
 scalar_t__ lmp_le_capable (struct hci_dev*) ;
 scalar_t__ lmp_sc_capable (struct hci_dev*) ;
 scalar_t__ lmp_ssp_capable (struct hci_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 get_supported_settings(struct hci_dev *hdev)
{
 u32 settings = 0;

 settings |= MGMT_SETTING_POWERED;
 settings |= MGMT_SETTING_BONDABLE;
 settings |= MGMT_SETTING_DEBUG_KEYS;
 settings |= MGMT_SETTING_CONNECTABLE;
 settings |= MGMT_SETTING_DISCOVERABLE;

 if (lmp_bredr_capable(hdev)) {
  if (hdev->hci_ver >= BLUETOOTH_VER_1_2)
   settings |= MGMT_SETTING_FAST_CONNECTABLE;
  settings |= MGMT_SETTING_BREDR;
  settings |= MGMT_SETTING_LINK_SECURITY;

  if (lmp_ssp_capable(hdev)) {
   settings |= MGMT_SETTING_SSP;
   settings |= MGMT_SETTING_HS;
  }

  if (lmp_sc_capable(hdev))
   settings |= MGMT_SETTING_SECURE_CONN;
 }

 if (lmp_le_capable(hdev)) {
  settings |= MGMT_SETTING_LE;
  settings |= MGMT_SETTING_ADVERTISING;
  settings |= MGMT_SETTING_SECURE_CONN;
  settings |= MGMT_SETTING_PRIVACY;
  settings |= MGMT_SETTING_STATIC_ADDRESS;
 }

 if (test_bit(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks) ||
     hdev->set_bdaddr)
  settings |= MGMT_SETTING_CONFIGURATION;

 settings |= MGMT_SETTING_PHY_CONFIGURATION;

 return settings;
}
