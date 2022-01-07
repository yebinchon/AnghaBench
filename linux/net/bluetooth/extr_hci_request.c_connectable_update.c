
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int cur_adv_instance; int adv_instances; } ;


 int HCI_ADVERTISING ;
 int HCI_BREDR_ENABLED ;
 int __hci_req_enable_advertising (struct hci_request*) ;
 int __hci_req_start_ext_adv (struct hci_request*,int ) ;
 int __hci_req_update_adv_data (struct hci_request*,int ) ;
 int __hci_req_update_scan (struct hci_request*) ;
 int __hci_update_background_scan (struct hci_request*) ;
 scalar_t__ ext_adv_capable (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int list_empty (int *) ;

__attribute__((used)) static int connectable_update(struct hci_request *req, unsigned long opt)
{
 struct hci_dev *hdev = req->hdev;

 hci_dev_lock(hdev);

 __hci_req_update_scan(req);





 if (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED))
  __hci_req_update_adv_data(req, hdev->cur_adv_instance);


 if (hci_dev_test_flag(hdev, HCI_ADVERTISING) ||
     !list_empty(&hdev->adv_instances)) {
  if (ext_adv_capable(hdev))
   __hci_req_start_ext_adv(req, hdev->cur_adv_instance);
  else
   __hci_req_enable_advertising(req);
 }

 __hci_update_background_scan(req);

 hci_dev_unlock(hdev);

 return 0;
}
