
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int flags; } ;


 int HCI_BREDR_ENABLED ;
 int HCI_CONNECTABLE ;
 int HCI_DISCOVERABLE ;
 int HCI_ISCAN ;
 int HCI_OP_WRITE_SCAN_ENABLE ;
 int HCI_PSCAN ;
 int SCAN_DISABLED ;
 int SCAN_INQUIRY ;
 int SCAN_PAGE ;
 scalar_t__ disconnected_whitelist_entries (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int,int*) ;
 int hdev_is_powered (struct hci_dev*) ;
 scalar_t__ mgmt_powering_down (struct hci_dev*) ;
 int test_bit (int ,int *) ;

void __hci_req_update_scan(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 u8 scan;

 if (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED))
  return;

 if (!hdev_is_powered(hdev))
  return;

 if (mgmt_powering_down(hdev))
  return;

 if (hci_dev_test_flag(hdev, HCI_CONNECTABLE) ||
     disconnected_whitelist_entries(hdev))
  scan = SCAN_PAGE;
 else
  scan = SCAN_DISABLED;

 if (hci_dev_test_flag(hdev, HCI_DISCOVERABLE))
  scan |= SCAN_INQUIRY;

 if (test_bit(HCI_PSCAN, &hdev->flags) == !!(scan & SCAN_PAGE) &&
     test_bit(HCI_ISCAN, &hdev->flags) == !!(scan & SCAN_INQUIRY))
  return;

 hci_req_add(req, HCI_OP_WRITE_SCAN_ENABLE, 1, &scan);
}
