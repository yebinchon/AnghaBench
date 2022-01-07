
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int num_iac; } ;
struct hci_cp_write_current_iac_lap {int num_iac; int* iac_lap; } ;


 int HCI_DISCOVERABLE ;
 int HCI_LIMITED_DISCOVERABLE ;
 int HCI_OP_WRITE_CURRENT_IAC_LAP ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_write_current_iac_lap*) ;
 int min_t (int ,int ,int) ;
 int u8 ;

__attribute__((used)) static void write_iac(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 struct hci_cp_write_current_iac_lap cp;

 if (!hci_dev_test_flag(hdev, HCI_DISCOVERABLE))
  return;

 if (hci_dev_test_flag(hdev, HCI_LIMITED_DISCOVERABLE)) {

  cp.num_iac = min_t(u8, hdev->num_iac, 2);
  cp.iac_lap[0] = 0x00;
  cp.iac_lap[1] = 0x8b;
  cp.iac_lap[2] = 0x9e;
  cp.iac_lap[3] = 0x33;
  cp.iac_lap[4] = 0x8b;
  cp.iac_lap[5] = 0x9e;
 } else {

  cp.num_iac = 1;
  cp.iac_lap[0] = 0x33;
  cp.iac_lap[1] = 0x8b;
  cp.iac_lap[2] = 0x9e;
 }

 hci_req_add(req, HCI_OP_WRITE_CURRENT_IAC_LAP,
      (cp.num_iac * 3) + 1, &cp);
}
