
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int req_workqueue; int power_off; } ;
typedef int __u16 ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int HCI_AUTO_OFF ;
 int HCI_BONDABLE ;
 int HCI_MGMT ;
 int HCI_UNCONFIGURED ;
 int HCI_USER_CHANNEL ;
 int cancel_delayed_work (int *) ;
 int flush_workqueue (int ) ;
 int hci_dev_do_open (struct hci_dev*) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;

int hci_dev_open(__u16 dev)
{
 struct hci_dev *hdev;
 int err;

 hdev = hci_dev_get(dev);
 if (!hdev)
  return -ENODEV;
 if (hci_dev_test_flag(hdev, HCI_UNCONFIGURED) &&
     !hci_dev_test_flag(hdev, HCI_USER_CHANNEL)) {
  err = -EOPNOTSUPP;
  goto done;
 }






 if (hci_dev_test_and_clear_flag(hdev, HCI_AUTO_OFF))
  cancel_delayed_work(&hdev->power_off);





 flush_workqueue(hdev->req_workqueue);







 if (!hci_dev_test_flag(hdev, HCI_USER_CHANNEL) &&
     !hci_dev_test_flag(hdev, HCI_MGMT))
  hci_dev_set_flag(hdev, HCI_BONDABLE);

 err = hci_dev_do_open(hdev);

done:
 hci_dev_put(hdev);
 return err;
}
