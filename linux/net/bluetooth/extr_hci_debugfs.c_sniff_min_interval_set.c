
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hci_dev {scalar_t__ sniff_max_interval; scalar_t__ sniff_min_interval; } ;


 int EINVAL ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static int sniff_min_interval_set(void *data, u64 val)
{
 struct hci_dev *hdev = data;

 if (val == 0 || val % 2 || val > hdev->sniff_max_interval)
  return -EINVAL;

 hci_dev_lock(hdev);
 hdev->sniff_min_interval = val;
 hci_dev_unlock(hdev);

 return 0;
}
