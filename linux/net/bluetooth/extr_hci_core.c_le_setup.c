
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;


 int HCI_LE_ENABLED ;
 int HCI_OP_LE_READ_BUFFER_SIZE ;
 int HCI_OP_LE_READ_LOCAL_FEATURES ;
 int HCI_OP_LE_READ_SUPPORTED_STATES ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int ,int *) ;
 int lmp_bredr_capable (struct hci_dev*) ;

__attribute__((used)) static void le_setup(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;


 hci_req_add(req, HCI_OP_LE_READ_BUFFER_SIZE, 0, ((void*)0));


 hci_req_add(req, HCI_OP_LE_READ_LOCAL_FEATURES, 0, ((void*)0));


 hci_req_add(req, HCI_OP_LE_READ_SUPPORTED_STATES, 0, ((void*)0));


 if (!lmp_bredr_capable(hdev))
  hci_dev_set_flag(hdev, HCI_LE_ENABLED);
}
