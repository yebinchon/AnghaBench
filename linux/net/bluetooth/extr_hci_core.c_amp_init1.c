
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_request {TYPE_1__* hdev; } ;
struct TYPE_2__ {int flow_ctl_mode; } ;


 int HCI_FLOW_CTL_MODE_BLOCK_BASED ;
 int HCI_OP_READ_DATA_BLOCK_SIZE ;
 int HCI_OP_READ_FLOW_CONTROL_MODE ;
 int HCI_OP_READ_LOCAL_AMP_INFO ;
 int HCI_OP_READ_LOCAL_COMMANDS ;
 int HCI_OP_READ_LOCAL_VERSION ;
 int HCI_OP_READ_LOCATION_DATA ;
 int hci_req_add (struct hci_request*,int ,int ,int *) ;

__attribute__((used)) static void amp_init1(struct hci_request *req)
{
 req->hdev->flow_ctl_mode = HCI_FLOW_CTL_MODE_BLOCK_BASED;


 hci_req_add(req, HCI_OP_READ_LOCAL_VERSION, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_LOCAL_COMMANDS, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_LOCAL_AMP_INFO, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_DATA_BLOCK_SIZE, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_FLOW_CONTROL_MODE, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_LOCATION_DATA, 0, ((void*)0));
}
