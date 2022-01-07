
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint16_t ;
typedef int u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int name; } ;


 int ADDR_LE_DEV_PUBLIC ;
 int BT_DBG (char*,int ) ;
 int DISCOV_LE_SCAN_WIN ;
 int EBUSY ;
 int HCI_LE_ADV ;
 int HCI_LE_SCAN ;
 int LE_SCAN_ACTIVE ;
 int __hci_req_disable_advertising (struct hci_request*) ;
 int cancel_adv_timeout (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 scalar_t__ hci_lookup_le_connect (struct hci_dev*) ;
 int hci_req_add_le_scan_disable (struct hci_request*) ;
 int hci_req_start_scan (struct hci_request*,int ,unsigned long,int ,int ,int ) ;
 int hci_update_random_address (struct hci_request*,int,int ,int *) ;
 int scan_use_rpa (struct hci_dev*) ;

__attribute__((used)) static int active_scan(struct hci_request *req, unsigned long opt)
{
 uint16_t interval = opt;
 struct hci_dev *hdev = req->hdev;
 u8 own_addr_type;
 int err;

 BT_DBG("%s", hdev->name);

 if (hci_dev_test_flag(hdev, HCI_LE_ADV)) {
  hci_dev_lock(hdev);




  if (hci_lookup_le_connect(hdev)) {
   hci_dev_unlock(hdev);
   return -EBUSY;
  }

  cancel_adv_timeout(hdev);
  hci_dev_unlock(hdev);

  __hci_req_disable_advertising(req);
 }





 if (hci_dev_test_flag(hdev, HCI_LE_SCAN))
  hci_req_add_le_scan_disable(req);





 err = hci_update_random_address(req, 1, scan_use_rpa(hdev),
     &own_addr_type);
 if (err < 0)
  own_addr_type = ADDR_LE_DEV_PUBLIC;

 hci_req_start_scan(req, LE_SCAN_ACTIVE, interval, DISCOV_LE_SCAN_WIN,
      own_addr_type, 0);
 return 0;
}
