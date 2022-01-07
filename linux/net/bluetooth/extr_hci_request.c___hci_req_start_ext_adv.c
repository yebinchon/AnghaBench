
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;


 int HCI_LE_ADV ;
 int __hci_req_disable_advertising (struct hci_request*) ;
 int __hci_req_enable_ext_advertising (struct hci_request*,int ) ;
 int __hci_req_setup_ext_adv_instance (struct hci_request*,int ) ;
 int __hci_req_update_scan_rsp_data (struct hci_request*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;

int __hci_req_start_ext_adv(struct hci_request *req, u8 instance)
{
 struct hci_dev *hdev = req->hdev;
 int err;

 if (hci_dev_test_flag(hdev, HCI_LE_ADV))
  __hci_req_disable_advertising(req);

 err = __hci_req_setup_ext_adv_instance(req, instance);
 if (err < 0)
  return err;

 __hci_req_update_scan_rsp_data(req, instance);
 __hci_req_enable_ext_advertising(req, instance);

 return 0;
}
