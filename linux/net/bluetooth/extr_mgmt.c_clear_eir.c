
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {struct hci_cp_write_eir* eir; } ;
struct hci_cp_write_eir {int dummy; } ;
typedef int cp ;


 int HCI_OP_WRITE_EIR ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_write_eir*) ;
 int lmp_ext_inq_capable (struct hci_dev*) ;
 int memset (struct hci_cp_write_eir*,int ,int) ;

__attribute__((used)) static void clear_eir(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 struct hci_cp_write_eir cp;

 if (!lmp_ext_inq_capable(hdev))
  return;

 memset(hdev->eir, 0, sizeof(hdev->eir));

 memset(&cp, 0, sizeof(cp));

 hci_req_add(req, HCI_OP_WRITE_EIR, sizeof(cp), &cp);
}
