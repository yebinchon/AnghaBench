
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {int public_addr; int quirks; } ;
typedef int __le32 ;


 int BDADDR_ANY ;
 int HCI_EXT_CONFIGURED ;
 int HCI_QUIRK_EXTERNAL_CONFIG ;
 int HCI_QUIRK_INVALID_BDADDR ;
 int HCI_QUIRK_USE_BDADDR_PROPERTY ;
 int MGMT_OPTION_EXTERNAL_CONFIG ;
 int MGMT_OPTION_PUBLIC_ADDRESS ;
 int bacmp (int *,int ) ;
 int cpu_to_le32 (int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static __le32 get_missing_options(struct hci_dev *hdev)
{
 u32 options = 0;

 if (test_bit(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks) &&
     !hci_dev_test_flag(hdev, HCI_EXT_CONFIGURED))
  options |= MGMT_OPTION_EXTERNAL_CONFIG;

 if ((test_bit(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks) ||
      test_bit(HCI_QUIRK_USE_BDADDR_PROPERTY, &hdev->quirks)) &&
     !bacmp(&hdev->public_addr, BDADDR_ANY))
  options |= MGMT_OPTION_PUBLIC_ADDRESS;

 return cpu_to_le32(options);
}
