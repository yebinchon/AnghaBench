
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_write_le_host_supported {int le; int simul; } ;
typedef int cp ;


 int HCI_LE_ENABLED ;
 int HCI_OP_WRITE_LE_HOST_SUPPORTED ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_write_le_host_supported*) ;
 int lmp_bredr_capable (struct hci_dev*) ;
 int lmp_host_le_capable (struct hci_dev*) ;
 int memset (struct hci_cp_write_le_host_supported*,int ,int) ;

__attribute__((used)) static void hci_set_le_support(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 struct hci_cp_write_le_host_supported cp;


 if (!lmp_bredr_capable(hdev))
  return;

 memset(&cp, 0, sizeof(cp));

 if (hci_dev_test_flag(hdev, HCI_LE_ENABLED)) {
  cp.le = 0x01;
  cp.simul = 0x00;
 }

 if (cp.le != lmp_host_le_capable(hdev))
  hci_req_add(req, HCI_OP_WRITE_LE_HOST_SUPPORTED, sizeof(cp),
       &cp);
}
