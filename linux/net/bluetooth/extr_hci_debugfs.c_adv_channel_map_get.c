
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hci_dev {int le_adv_channel_map; } ;


 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static int adv_channel_map_get(void *data, u64 *val)
{
 struct hci_dev *hdev = data;

 hci_dev_lock(hdev);
 *val = hdev->le_adv_channel_map;
 hci_dev_unlock(hdev);

 return 0;
}
