
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {scalar_t__ set_bdaddr; int quirks; int name; } ;


 int BT_DBG (char*,int ,unsigned long) ;
 int HCI_OP_READ_BD_ADDR ;
 int HCI_OP_READ_LOCAL_VERSION ;
 int HCI_QUIRK_RESET_ON_CLOSE ;
 int hci_req_add (struct hci_request*,int ,int ,int *) ;
 int hci_reset_req (struct hci_request*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hci_init0_req(struct hci_request *req, unsigned long opt)
{
 struct hci_dev *hdev = req->hdev;

 BT_DBG("%s %ld", hdev->name, opt);


 if (!test_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks))
  hci_reset_req(req, 0);


 hci_req_add(req, HCI_OP_READ_LOCAL_VERSION, 0, ((void*)0));


 if (hdev->set_bdaddr)
  hci_req_add(req, HCI_OP_READ_BD_ADDR, 0, ((void*)0));

 return 0;
}
