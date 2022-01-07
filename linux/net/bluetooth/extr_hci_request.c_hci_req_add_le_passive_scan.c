
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int* le_features; int le_scan_window; int le_scan_interval; } ;


 int HCI_LE_EXT_SCAN_POLICY ;
 int HCI_PRIVACY ;
 int LE_SCAN_PASSIVE ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_start_scan (struct hci_request*,int ,int ,int ,int,int) ;
 scalar_t__ hci_update_random_address (struct hci_request*,int,int ,int*) ;
 int scan_use_rpa (struct hci_dev*) ;
 int update_white_list (struct hci_request*) ;

void hci_req_add_le_passive_scan(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 u8 own_addr_type;
 u8 filter_policy;







 if (hci_update_random_address(req, 0, scan_use_rpa(hdev),
          &own_addr_type))
  return;





 filter_policy = update_white_list(req);
 if (hci_dev_test_flag(hdev, HCI_PRIVACY) &&
     (hdev->le_features[0] & HCI_LE_EXT_SCAN_POLICY))
  filter_policy |= 0x02;

 hci_req_start_scan(req, LE_SCAN_PASSIVE, hdev->le_scan_interval,
      hdev->le_scan_window, own_addr_type, filter_policy);
}
