
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_le_set_scan_enable {void* filter_dup; void* enable; } ;
struct hci_cp_le_set_ext_scan_enable {void* filter_dup; void* enable; } ;
typedef int ext_enable_cp ;
typedef int cp ;


 int HCI_LE_SCAN ;
 int HCI_OP_LE_SET_EXT_SCAN_ENABLE ;
 int HCI_OP_LE_SET_SCAN_ENABLE ;
 void* LE_SCAN_ENABLE ;
 void* LE_SCAN_FILTER_DUP_ENABLE ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_le_set_scan_enable*) ;
 int hci_req_add_le_scan_disable (struct hci_request*) ;
 int memset (struct hci_cp_le_set_scan_enable*,int ,int) ;
 scalar_t__ use_ext_scan (struct hci_dev*) ;

__attribute__((used)) static int le_scan_restart(struct hci_request *req, unsigned long opt)
{
 struct hci_dev *hdev = req->hdev;


 if (!hci_dev_test_flag(hdev, HCI_LE_SCAN))
  return 0;

 hci_req_add_le_scan_disable(req);

 if (use_ext_scan(hdev)) {
  struct hci_cp_le_set_ext_scan_enable ext_enable_cp;

  memset(&ext_enable_cp, 0, sizeof(ext_enable_cp));
  ext_enable_cp.enable = LE_SCAN_ENABLE;
  ext_enable_cp.filter_dup = LE_SCAN_FILTER_DUP_ENABLE;

  hci_req_add(req, HCI_OP_LE_SET_EXT_SCAN_ENABLE,
       sizeof(ext_enable_cp), &ext_enable_cp);
 } else {
  struct hci_cp_le_set_scan_enable cp;

  memset(&cp, 0, sizeof(cp));
  cp.enable = LE_SCAN_ENABLE;
  cp.filter_dup = LE_SCAN_FILTER_DUP_ENABLE;
  hci_req_add(req, HCI_OP_LE_SET_SCAN_ENABLE, sizeof(cp), &cp);
 }

 return 0;
}
