
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;


 int HCI_ADVERTISING ;
 int HCI_BREDR_ENABLED ;
 int HCI_LIMITED_PRIVACY ;
 int __hci_req_enable_advertising (struct hci_request*) ;
 int __hci_req_start_ext_adv (struct hci_request*,int) ;
 int __hci_req_update_adv_data (struct hci_request*,int) ;
 int __hci_req_update_class (struct hci_request*) ;
 int __hci_req_update_scan (struct hci_request*) ;
 scalar_t__ ext_adv_capable (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int write_iac (struct hci_request*) ;

__attribute__((used)) static int discoverable_update(struct hci_request *req, unsigned long opt)
{
 struct hci_dev *hdev = req->hdev;

 hci_dev_lock(hdev);

 if (hci_dev_test_flag(hdev, HCI_BREDR_ENABLED)) {
  write_iac(req);
  __hci_req_update_scan(req);
  __hci_req_update_class(req);
 }




 if (hci_dev_test_flag(hdev, HCI_ADVERTISING)) {
  __hci_req_update_adv_data(req, 0x00);




  if (hci_dev_test_flag(hdev, HCI_LIMITED_PRIVACY)) {
   if (ext_adv_capable(hdev))
    __hci_req_start_ext_adv(req, 0x00);
   else
    __hci_req_enable_advertising(req);
  }
 }

 hci_dev_unlock(hdev);

 return 0;
}
