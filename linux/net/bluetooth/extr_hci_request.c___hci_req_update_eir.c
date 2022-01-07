
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int eir; } ;
struct hci_cp_write_eir {int data; } ;
typedef int cp ;


 int HCI_OP_WRITE_EIR ;
 int HCI_SERVICE_CACHE ;
 int HCI_SSP_ENABLED ;
 int create_eir (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_write_eir*) ;
 int hdev_is_powered (struct hci_dev*) ;
 int lmp_ext_inq_capable (struct hci_dev*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int memset (struct hci_cp_write_eir*,int ,int) ;

void __hci_req_update_eir(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 struct hci_cp_write_eir cp;

 if (!hdev_is_powered(hdev))
  return;

 if (!lmp_ext_inq_capable(hdev))
  return;

 if (!hci_dev_test_flag(hdev, HCI_SSP_ENABLED))
  return;

 if (hci_dev_test_flag(hdev, HCI_SERVICE_CACHE))
  return;

 memset(&cp, 0, sizeof(cp));

 create_eir(hdev, cp.data);

 if (memcmp(cp.data, hdev->eir, sizeof(cp.data)) == 0)
  return;

 memcpy(hdev->eir, cp.data, sizeof(cp.data));

 hci_req_add(req, HCI_OP_WRITE_EIR, sizeof(cp), &cp);
}
