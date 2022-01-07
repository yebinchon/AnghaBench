
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hci_dev {int le_adv_min_interval; int le_adv_max_interval; } ;


 int EINVAL ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static int adv_max_interval_set(void *data, u64 val)
{
 struct hci_dev *hdev = data;

 if (val < 0x0020 || val > 0x4000 || val < hdev->le_adv_min_interval)
  return -EINVAL;

 hci_dev_lock(hdev);
 hdev->le_adv_max_interval = val;
 hci_dev_unlock(hdev);

 return 0;
}
