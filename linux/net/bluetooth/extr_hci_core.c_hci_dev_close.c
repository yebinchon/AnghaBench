
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int power_off; } ;
typedef int __u16 ;


 int EBUSY ;
 int ENODEV ;
 int HCI_AUTO_OFF ;
 int HCI_USER_CHANNEL ;
 int cancel_delayed_work (int *) ;
 int hci_dev_do_close (struct hci_dev*) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 scalar_t__ hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;

int hci_dev_close(__u16 dev)
{
 struct hci_dev *hdev;
 int err;

 hdev = hci_dev_get(dev);
 if (!hdev)
  return -ENODEV;

 if (hci_dev_test_flag(hdev, HCI_USER_CHANNEL)) {
  err = -EBUSY;
  goto done;
 }

 if (hci_dev_test_and_clear_flag(hdev, HCI_AUTO_OFF))
  cancel_delayed_work(&hdev->power_off);

 err = hci_dev_do_close(hdev);

done:
 hci_dev_put(hdev);
 return err;
}
