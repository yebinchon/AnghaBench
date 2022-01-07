
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev_stats {int dummy; } ;
struct hci_dev {int stat; } ;
typedef int __u16 ;


 int EBUSY ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int HCI_UNCONFIGURED ;
 int HCI_USER_CHANNEL ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int memset (int *,int ,int) ;

int hci_dev_reset_stat(__u16 dev)
{
 struct hci_dev *hdev;
 int ret = 0;

 hdev = hci_dev_get(dev);
 if (!hdev)
  return -ENODEV;

 if (hci_dev_test_flag(hdev, HCI_USER_CHANNEL)) {
  ret = -EBUSY;
  goto done;
 }

 if (hci_dev_test_flag(hdev, HCI_UNCONFIGURED)) {
  ret = -EOPNOTSUPP;
  goto done;
 }

 memset(&hdev->stat, 0, sizeof(struct hci_dev_stats));

done:
 hci_dev_put(hdev);
 return ret;
}
