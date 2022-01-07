
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int adv_instance_expire; scalar_t__ adv_instance_timeout; } ;


 int cancel_delayed_work (int *) ;

__attribute__((used)) static void cancel_adv_timeout(struct hci_dev *hdev)
{
 if (hdev->adv_instance_timeout) {
  hdev->adv_instance_timeout = 0;
  cancel_delayed_work(&hdev->adv_instance_expire);
 }
}
