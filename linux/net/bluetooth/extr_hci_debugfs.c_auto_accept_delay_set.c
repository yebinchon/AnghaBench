
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hci_dev {int auto_accept_delay; } ;


 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static int auto_accept_delay_set(void *data, u64 val)
{
 struct hci_dev *hdev = data;

 hci_dev_lock(hdev);
 hdev->auto_accept_delay = val;
 hci_dev_unlock(hdev);

 return 0;
}
