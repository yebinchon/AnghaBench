
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flags; } ;
typedef int __u16 ;


 int EBUSY ;
 int ENETDOWN ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int HCI_UNCONFIGURED ;
 int HCI_UP ;
 int HCI_USER_CHANNEL ;
 int hci_dev_do_reset (struct hci_dev*) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int test_bit (int ,int *) ;

int hci_dev_reset(__u16 dev)
{
 struct hci_dev *hdev;
 int err;

 hdev = hci_dev_get(dev);
 if (!hdev)
  return -ENODEV;

 if (!test_bit(HCI_UP, &hdev->flags)) {
  err = -ENETDOWN;
  goto done;
 }

 if (hci_dev_test_flag(hdev, HCI_USER_CHANNEL)) {
  err = -EBUSY;
  goto done;
 }

 if (hci_dev_test_flag(hdev, HCI_UNCONFIGURED)) {
  err = -EOPNOTSUPP;
  goto done;
 }

 err = hci_dev_do_reset(hdev);

done:
 hci_dev_put(hdev);
 return err;
}
