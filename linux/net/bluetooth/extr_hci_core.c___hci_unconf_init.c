
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int quirks; } ;


 int HCI_INIT_TIMEOUT ;
 int HCI_QUIRK_RAW_DEVICE ;
 int HCI_SETUP ;
 int __hci_req_sync (struct hci_dev*,int ,int ,int ,int *) ;
 int hci_debugfs_create_basic (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_init0_req ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int __hci_unconf_init(struct hci_dev *hdev)
{
 int err;

 if (test_bit(HCI_QUIRK_RAW_DEVICE, &hdev->quirks))
  return 0;

 err = __hci_req_sync(hdev, hci_init0_req, 0, HCI_INIT_TIMEOUT, ((void*)0));
 if (err < 0)
  return err;

 if (hci_dev_test_flag(hdev, HCI_SETUP))
  hci_debugfs_create_basic(hdev);

 return 0;
}
