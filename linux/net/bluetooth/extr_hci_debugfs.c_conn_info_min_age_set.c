
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hci_dev {scalar_t__ conn_info_max_age; scalar_t__ conn_info_min_age; } ;


 int EINVAL ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static int conn_info_min_age_set(void *data, u64 val)
{
 struct hci_dev *hdev = data;

 if (val == 0 || val > hdev->conn_info_max_age)
  return -EINVAL;

 hci_dev_lock(hdev);
 hdev->conn_info_min_age = val;
 hci_dev_unlock(hdev);

 return 0;
}
