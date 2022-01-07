
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_inquiry_req {int num_rsp; int length; int lap; } ;
struct hci_dev {int flags; int name; } ;
struct hci_cp_inquiry {int num_rsp; int length; int lap; } ;
typedef int cp ;


 int BT_DBG (char*,int ) ;
 int HCI_INQUIRY ;
 int HCI_OP_INQUIRY ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_inquiry*) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hci_inq_req(struct hci_request *req, unsigned long opt)
{
 struct hci_inquiry_req *ir = (struct hci_inquiry_req *) opt;
 struct hci_dev *hdev = req->hdev;
 struct hci_cp_inquiry cp;

 BT_DBG("%s", hdev->name);

 if (test_bit(HCI_INQUIRY, &hdev->flags))
  return 0;


 memcpy(&cp.lap, &ir->lap, 3);
 cp.length = ir->length;
 cp.num_rsp = ir->num_rsp;
 hci_req_add(req, HCI_OP_INQUIRY, sizeof(cp), &cp);

 return 0;
}
