
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_request {TYPE_1__* hdev; } ;
struct TYPE_2__ {int flags; int name; } ;


 int BT_DBG (char*,int ,unsigned long) ;
 int HCI_OP_RESET ;
 int HCI_RESET ;
 int hci_req_add (struct hci_request*,int ,int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int hci_reset_req(struct hci_request *req, unsigned long opt)
{
 BT_DBG("%s %ld", req->hdev->name, opt);


 set_bit(HCI_RESET, &req->hdev->flags);
 hci_req_add(req, HCI_OP_RESET, 0, ((void*)0));
 return 0;
}
