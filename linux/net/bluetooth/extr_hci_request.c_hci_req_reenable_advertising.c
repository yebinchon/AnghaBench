
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int dummy; } ;
struct hci_dev {int cur_adv_instance; int adv_instances; } ;


 int HCI_ADVERTISING ;
 int __hci_req_enable_advertising (struct hci_request*) ;
 int __hci_req_schedule_adv_instance (struct hci_request*,int ,int) ;
 int __hci_req_start_ext_adv (struct hci_request*,int) ;
 int __hci_req_update_adv_data (struct hci_request*,int) ;
 int __hci_req_update_scan_rsp_data (struct hci_request*,int) ;
 int adv_enable_complete ;
 scalar_t__ ext_adv_capable (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 scalar_t__ list_empty (int *) ;

void hci_req_reenable_advertising(struct hci_dev *hdev)
{
 struct hci_request req;

 if (!hci_dev_test_flag(hdev, HCI_ADVERTISING) &&
     list_empty(&hdev->adv_instances))
  return;

 hci_req_init(&req, hdev);

 if (hdev->cur_adv_instance) {
  __hci_req_schedule_adv_instance(&req, hdev->cur_adv_instance,
      1);
 } else {
  if (ext_adv_capable(hdev)) {
   __hci_req_start_ext_adv(&req, 0x00);
  } else {
   __hci_req_update_adv_data(&req, 0x00);
   __hci_req_update_scan_rsp_data(&req, 0x00);
   __hci_req_enable_advertising(&req);
  }
 }

 hci_req_run(&req, adv_enable_complete);
}
