
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_request {TYPE_1__* hdev; } ;
struct TYPE_2__ {int* commands; } ;


 int HCI_OP_READ_LOCAL_FEATURES ;
 int hci_req_add (struct hci_request*,int ,int ,int *) ;

__attribute__((used)) static int amp_init2(struct hci_request *req)
{




 if (req->hdev->commands[14] & 0x20)
  hci_req_add(req, HCI_OP_READ_LOCAL_FEATURES, 0, ((void*)0));

 return 0;
}
