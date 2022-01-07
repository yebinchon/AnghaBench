
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int cur_adv_instance; int adv_instance_cnt; scalar_t__ adv_instance_timeout; int adv_instance_expire; int name; } ;
struct adv_info {int list; int rpa_expired_cb; } ;


 int BT_DBG (char*,int ,int) ;
 int ENOENT ;
 int cancel_delayed_work (int *) ;
 int cancel_delayed_work_sync (int *) ;
 struct adv_info* hci_find_adv_instance (struct hci_dev*,int) ;
 int kfree (struct adv_info*) ;
 int list_del (int *) ;

int hci_remove_adv_instance(struct hci_dev *hdev, u8 instance)
{
 struct adv_info *adv_instance;

 adv_instance = hci_find_adv_instance(hdev, instance);
 if (!adv_instance)
  return -ENOENT;

 BT_DBG("%s removing %dMR", hdev->name, instance);

 if (hdev->cur_adv_instance == instance) {
  if (hdev->adv_instance_timeout) {
   cancel_delayed_work(&hdev->adv_instance_expire);
   hdev->adv_instance_timeout = 0;
  }
  hdev->cur_adv_instance = 0x00;
 }

 cancel_delayed_work_sync(&adv_instance->rpa_expired_cb);

 list_del(&adv_instance->list);
 kfree(adv_instance);

 hdev->adv_instance_cnt--;

 return 0;
}
