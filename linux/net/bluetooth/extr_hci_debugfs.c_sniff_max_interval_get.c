
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hci_dev {int sniff_max_interval; } ;


 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static int sniff_max_interval_get(void *data, u64 *val)
{
 struct hci_dev *hdev = data;

 hci_dev_lock(hdev);
 *val = hdev->sniff_max_interval;
 hci_dev_unlock(hdev);

 return 0;
}
