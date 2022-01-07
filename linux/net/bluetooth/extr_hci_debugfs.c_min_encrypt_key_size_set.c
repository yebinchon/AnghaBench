
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hci_dev {int min_enc_key_size; } ;


 int EINVAL ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static int min_encrypt_key_size_set(void *data, u64 val)
{
 struct hci_dev *hdev = data;

 if (val < 1 || val > 16)
  return -EINVAL;

 hci_dev_lock(hdev);
 hdev->min_enc_key_size = val;
 hci_dev_unlock(hdev);

 return 0;
}
