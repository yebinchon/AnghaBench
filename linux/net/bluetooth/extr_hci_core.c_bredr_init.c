
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_request {TYPE_1__* hdev; } ;
struct TYPE_2__ {int flow_ctl_mode; } ;


 int HCI_FLOW_CTL_MODE_PACKET_BASED ;
 int HCI_OP_READ_BD_ADDR ;
 int HCI_OP_READ_LOCAL_FEATURES ;
 int HCI_OP_READ_LOCAL_VERSION ;
 int hci_req_add (struct hci_request*,int ,int ,int *) ;

__attribute__((used)) static void bredr_init(struct hci_request *req)
{
 req->hdev->flow_ctl_mode = HCI_FLOW_CTL_MODE_PACKET_BASED;


 hci_req_add(req, HCI_OP_READ_LOCAL_FEATURES, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_LOCAL_VERSION, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_BD_ADDR, 0, ((void*)0));
}
