
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int adv_instance_timeout; int cur_adv_instance; int adv_instance_expire; int req_workqueue; int adv_instances; } ;
struct adv_info {scalar_t__ timeout; scalar_t__ duration; scalar_t__ remaining_time; } ;


 int EBUSY ;
 int ENOENT ;
 int EPERM ;
 int HCI_ADVERTISING ;
 int HCI_LE_ADV ;
 int __hci_req_enable_advertising (struct hci_request*) ;
 int __hci_req_start_ext_adv (struct hci_request*,int ) ;
 int __hci_req_update_adv_data (struct hci_request*,int ) ;
 int __hci_req_update_scan_rsp_data (struct hci_request*,int ) ;
 scalar_t__ ext_adv_capable (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 struct adv_info* hci_find_adv_instance (struct hci_dev*,int ) ;
 scalar_t__ list_empty (int *) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

int __hci_req_schedule_adv_instance(struct hci_request *req, u8 instance,
        bool force)
{
 struct hci_dev *hdev = req->hdev;
 struct adv_info *adv_instance = ((void*)0);
 u16 timeout;

 if (hci_dev_test_flag(hdev, HCI_ADVERTISING) ||
     list_empty(&hdev->adv_instances))
  return -EPERM;

 if (hdev->adv_instance_timeout)
  return -EBUSY;

 adv_instance = hci_find_adv_instance(hdev, instance);
 if (!adv_instance)
  return -ENOENT;
 if (adv_instance->timeout == 0 ||
     adv_instance->duration <= adv_instance->remaining_time)
  timeout = adv_instance->duration;
 else
  timeout = adv_instance->remaining_time;




 if (adv_instance->timeout)
  adv_instance->remaining_time =
    adv_instance->remaining_time - timeout;


 if (!ext_adv_capable(hdev)) {
  hdev->adv_instance_timeout = timeout;
  queue_delayed_work(hdev->req_workqueue,
      &hdev->adv_instance_expire,
      msecs_to_jiffies(timeout * 1000));
 }





 if (!force && hdev->cur_adv_instance == instance &&
     hci_dev_test_flag(hdev, HCI_LE_ADV))
  return 0;

 hdev->cur_adv_instance = instance;
 if (ext_adv_capable(hdev)) {
  __hci_req_start_ext_adv(req, instance);
 } else {
  __hci_req_update_adv_data(req, instance);
  __hci_req_update_scan_rsp_data(req, instance);
  __hci_req_enable_advertising(req);
 }

 return 0;
}
