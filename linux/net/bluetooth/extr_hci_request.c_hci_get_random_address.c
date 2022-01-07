
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int* b; } ;
struct hci_dev {int rpa_timeout; int bdaddr; int rpa_expired; int workqueue; TYPE_1__ rpa; int name; int irk; int random_addr; } ;
struct adv_info {int rpa_expired; int rpa_expired_cb; int random_addr; } ;
typedef TYPE_1__ bdaddr_t ;


 int ADDR_LE_DEV_PUBLIC ;
 int ADDR_LE_DEV_RANDOM ;
 TYPE_1__* BDADDR_ANY ;
 int BT_ERR (char*,int ) ;
 int HCI_RPA_EXPIRED ;
 scalar_t__ bacmp (int *,TYPE_1__*) ;
 int bacpy (TYPE_1__*,TYPE_1__*) ;
 int get_random_bytes (TYPE_1__*,int) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int) ;
 int smp_generate_rpa (struct hci_dev*,int ,TYPE_1__*) ;

int hci_get_random_address(struct hci_dev *hdev, bool require_privacy,
      bool use_rpa, struct adv_info *adv_instance,
      u8 *own_addr_type, bdaddr_t *rand_addr)
{
 int err;

 bacpy(rand_addr, BDADDR_ANY);




 if (use_rpa) {
  int to;

  *own_addr_type = ADDR_LE_DEV_RANDOM;

  if (adv_instance) {
   if (!adv_instance->rpa_expired &&
       !bacmp(&adv_instance->random_addr, &hdev->rpa))
    return 0;

   adv_instance->rpa_expired = 0;
  } else {
   if (!hci_dev_test_and_clear_flag(hdev, HCI_RPA_EXPIRED) &&
       !bacmp(&hdev->random_addr, &hdev->rpa))
    return 0;
  }

  err = smp_generate_rpa(hdev, hdev->irk, &hdev->rpa);
  if (err < 0) {
   BT_ERR("%s failed to generate new RPA", hdev->name);
   return err;
  }

  bacpy(rand_addr, &hdev->rpa);

  to = msecs_to_jiffies(hdev->rpa_timeout * 1000);
  if (adv_instance)
   queue_delayed_work(hdev->workqueue,
        &adv_instance->rpa_expired_cb, to);
  else
   queue_delayed_work(hdev->workqueue,
        &hdev->rpa_expired, to);

  return 0;
 }





 if (require_privacy) {
  bdaddr_t nrpa;

  while (1) {




   get_random_bytes(&nrpa, 6);
   nrpa.b[5] &= 0x3f;




   if (bacmp(&hdev->bdaddr, &nrpa))
    break;
  }

  *own_addr_type = ADDR_LE_DEV_RANDOM;
  bacpy(rand_addr, &nrpa);

  return 0;
 }


 *own_addr_type = ADDR_LE_DEV_PUBLIC;

 return 0;
}
