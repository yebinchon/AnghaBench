
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct TYPE_9__ {int* b; } ;
struct hci_dev {int rpa_timeout; TYPE_1__ static_addr; TYPE_1__ random_addr; TYPE_1__ bdaddr; int rpa_expired; int workqueue; TYPE_1__ rpa; int irk; } ;
typedef TYPE_1__ bdaddr_t ;


 int ADDR_LE_DEV_PUBLIC ;
 int ADDR_LE_DEV_RANDOM ;
 TYPE_1__* BDADDR_ANY ;
 int HCI_BREDR_ENABLED ;
 int HCI_FORCE_STATIC_ADDR ;
 int HCI_OP_LE_SET_RANDOM_ADDR ;
 int HCI_RPA_EXPIRED ;
 scalar_t__ bacmp (TYPE_1__*,TYPE_1__*) ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int get_random_bytes (TYPE_1__*,int) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int,TYPE_1__*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int) ;
 int set_random_addr (struct hci_request*,TYPE_1__*) ;
 int smp_generate_rpa (struct hci_dev*,int ,TYPE_1__*) ;

int hci_update_random_address(struct hci_request *req, bool require_privacy,
         bool use_rpa, u8 *own_addr_type)
{
 struct hci_dev *hdev = req->hdev;
 int err;





 if (use_rpa) {
  int to;

  *own_addr_type = ADDR_LE_DEV_RANDOM;

  if (!hci_dev_test_and_clear_flag(hdev, HCI_RPA_EXPIRED) &&
      !bacmp(&hdev->random_addr, &hdev->rpa))
   return 0;

  err = smp_generate_rpa(hdev, hdev->irk, &hdev->rpa);
  if (err < 0) {
   bt_dev_err(hdev, "failed to generate new RPA");
   return err;
  }

  set_random_addr(req, &hdev->rpa);

  to = msecs_to_jiffies(hdev->rpa_timeout * 1000);
  queue_delayed_work(hdev->workqueue, &hdev->rpa_expired, to);

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
  set_random_addr(req, &nrpa);
  return 0;
 }
 if (hci_dev_test_flag(hdev, HCI_FORCE_STATIC_ADDR) ||
     !bacmp(&hdev->bdaddr, BDADDR_ANY) ||
     (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED) &&
      bacmp(&hdev->static_addr, BDADDR_ANY))) {
  *own_addr_type = ADDR_LE_DEV_RANDOM;
  if (bacmp(&hdev->static_addr, &hdev->random_addr))
   hci_req_add(req, HCI_OP_LE_SET_RANDOM_ADDR, 6,
        &hdev->static_addr);
  return 0;
 }




 *own_addr_type = ADDR_LE_DEV_PUBLIC;

 return 0;
}
