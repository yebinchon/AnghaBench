
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*) ;
 int HCI_LE_ADV ;
 int HCI_OP_LE_SET_RANDOM_ADDR ;
 int HCI_RPA_EXPIRED ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_lookup_le_connect (struct hci_dev*) ;
 int hci_req_add (struct hci_request*,int ,int,int *) ;

__attribute__((used)) static void set_random_addr(struct hci_request *req, bdaddr_t *rpa)
{
 struct hci_dev *hdev = req->hdev;
 if (hci_dev_test_flag(hdev, HCI_LE_ADV) ||
     hci_lookup_le_connect(hdev)) {
  BT_DBG("Deferring random address update");
  hci_dev_set_flag(hdev, HCI_RPA_EXPIRED);
  return;
 }

 hci_req_add(req, HCI_OP_LE_SET_RANDOM_ADDR, 6, rpa);
}
