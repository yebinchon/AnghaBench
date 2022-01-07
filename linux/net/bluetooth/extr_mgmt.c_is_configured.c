
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int public_addr; int quirks; } ;


 int BDADDR_ANY ;
 int HCI_EXT_CONFIGURED ;
 int HCI_QUIRK_EXTERNAL_CONFIG ;
 int HCI_QUIRK_INVALID_BDADDR ;
 int HCI_QUIRK_USE_BDADDR_PROPERTY ;
 int bacmp (int *,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool is_configured(struct hci_dev *hdev)
{
 if (test_bit(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks) &&
     !hci_dev_test_flag(hdev, HCI_EXT_CONFIGURED))
  return 0;

 if ((test_bit(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks) ||
      test_bit(HCI_QUIRK_USE_BDADDR_PROPERTY, &hdev->quirks)) &&
     !bacmp(&hdev->public_addr, BDADDR_ANY))
  return 0;

 return 1;
}
