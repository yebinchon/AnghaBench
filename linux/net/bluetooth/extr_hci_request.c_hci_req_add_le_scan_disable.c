
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_le_set_scan_enable {void* enable; } ;
struct hci_cp_le_set_ext_scan_enable {void* enable; } ;
typedef int cp ;


 int HCI_OP_LE_SET_EXT_SCAN_ENABLE ;
 int HCI_OP_LE_SET_SCAN_ENABLE ;
 void* LE_SCAN_DISABLE ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_le_set_scan_enable*) ;
 int memset (struct hci_cp_le_set_scan_enable*,int ,int) ;
 scalar_t__ use_ext_scan (struct hci_dev*) ;

void hci_req_add_le_scan_disable(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;

 if (use_ext_scan(hdev)) {
  struct hci_cp_le_set_ext_scan_enable cp;

  memset(&cp, 0, sizeof(cp));
  cp.enable = LE_SCAN_DISABLE;
  hci_req_add(req, HCI_OP_LE_SET_EXT_SCAN_ENABLE, sizeof(cp),
       &cp);
 } else {
  struct hci_cp_le_set_scan_enable cp;

  memset(&cp, 0, sizeof(cp));
  cp.enable = LE_SCAN_DISABLE;
  hci_req_add(req, HCI_OP_LE_SET_SCAN_ENABLE, sizeof(cp), &cp);
 }
}
