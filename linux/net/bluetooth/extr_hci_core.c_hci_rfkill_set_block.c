
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;


 int BT_DBG (char*,struct hci_dev*,int ,int) ;
 int EBUSY ;
 int HCI_CONFIG ;
 int HCI_RFKILLED ;
 int HCI_SETUP ;
 int HCI_USER_CHANNEL ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_do_close (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;

__attribute__((used)) static int hci_rfkill_set_block(void *data, bool blocked)
{
 struct hci_dev *hdev = data;

 BT_DBG("%p name %s blocked %d", hdev, hdev->name, blocked);

 if (hci_dev_test_flag(hdev, HCI_USER_CHANNEL))
  return -EBUSY;

 if (blocked) {
  hci_dev_set_flag(hdev, HCI_RFKILLED);
  if (!hci_dev_test_flag(hdev, HCI_SETUP) &&
      !hci_dev_test_flag(hdev, HCI_CONFIG))
   hci_dev_do_close(hdev);
 } else {
  hci_dev_clear_flag(hdev, HCI_RFKILLED);
 }

 return 0;
}
