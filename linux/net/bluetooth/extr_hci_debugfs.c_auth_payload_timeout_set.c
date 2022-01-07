
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hci_dev {int auth_payload_timeout; } ;


 int EINVAL ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static int auth_payload_timeout_set(void *data, u64 val)
{
 struct hci_dev *hdev = data;

 if (val < 0x0001 || val > 0xffff)
  return -EINVAL;

 hci_dev_lock(hdev);
 hdev->auth_payload_timeout = val;
 hci_dev_unlock(hdev);

 return 0;
}
