
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_request {struct hci_dev* hdev; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct hci_dev {int name; int pend_le_reports; int pend_le_conns; TYPE_1__ discovery; int flags; } ;


 int BT_DBG (char*,int ) ;
 scalar_t__ DISCOVERY_STOPPED ;
 int HCI_AUTO_OFF ;
 int HCI_CONFIG ;
 int HCI_INIT ;
 int HCI_LE_ENABLED ;
 int HCI_LE_SCAN ;
 int HCI_SETUP ;
 int HCI_UNREGISTER ;
 int HCI_UP ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_discovery_filter_clear (struct hci_dev*) ;
 scalar_t__ hci_lookup_le_connect (struct hci_dev*) ;
 int hci_req_add_le_passive_scan (struct hci_request*) ;
 int hci_req_add_le_scan_disable (struct hci_request*) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void __hci_update_background_scan(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;

 if (!test_bit(HCI_UP, &hdev->flags) ||
     test_bit(HCI_INIT, &hdev->flags) ||
     hci_dev_test_flag(hdev, HCI_SETUP) ||
     hci_dev_test_flag(hdev, HCI_CONFIG) ||
     hci_dev_test_flag(hdev, HCI_AUTO_OFF) ||
     hci_dev_test_flag(hdev, HCI_UNREGISTER))
  return;


 if (!hci_dev_test_flag(hdev, HCI_LE_ENABLED))
  return;


 if (hdev->discovery.state != DISCOVERY_STOPPED)
  return;
 hci_discovery_filter_clear(hdev);

 if (list_empty(&hdev->pend_le_conns) &&
     list_empty(&hdev->pend_le_reports)) {






  if (!hci_dev_test_flag(hdev, HCI_LE_SCAN))
   return;

  hci_req_add_le_scan_disable(req);

  BT_DBG("%s stopping background scanning", hdev->name);
 } else {
  if (hci_lookup_le_connect(hdev))
   return;




  if (hci_dev_test_flag(hdev, HCI_LE_SCAN))
   hci_req_add_le_scan_disable(req);

  hci_req_add_le_passive_scan(req);

  BT_DBG("%s starting background scanning", hdev->name);
 }
}
