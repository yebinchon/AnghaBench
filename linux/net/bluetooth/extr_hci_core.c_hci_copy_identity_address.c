
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int bdaddr; int static_addr; } ;
typedef int bdaddr_t ;


 int ADDR_LE_DEV_PUBLIC ;
 int ADDR_LE_DEV_RANDOM ;
 int BDADDR_ANY ;
 int HCI_BREDR_ENABLED ;
 int HCI_FORCE_STATIC_ADDR ;
 scalar_t__ bacmp (int *,int ) ;
 int bacpy (int *,int *) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;

void hci_copy_identity_address(struct hci_dev *hdev, bdaddr_t *bdaddr,
          u8 *bdaddr_type)
{
 if (hci_dev_test_flag(hdev, HCI_FORCE_STATIC_ADDR) ||
     !bacmp(&hdev->bdaddr, BDADDR_ANY) ||
     (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED) &&
      bacmp(&hdev->static_addr, BDADDR_ANY))) {
  bacpy(bdaddr, &hdev->static_addr);
  *bdaddr_type = ADDR_LE_DEV_RANDOM;
 } else {
  bacpy(bdaddr, &hdev->bdaddr);
  *bdaddr_type = ADDR_LE_DEV_PUBLIC;
 }
}
