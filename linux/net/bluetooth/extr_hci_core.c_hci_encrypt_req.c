
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_request {TYPE_1__* hdev; } ;
typedef unsigned long __u8 ;
struct TYPE_2__ {int name; } ;


 int BT_DBG (char*,int ,unsigned long) ;
 int HCI_OP_WRITE_ENCRYPT_MODE ;
 int hci_req_add (struct hci_request*,int ,int,unsigned long*) ;

__attribute__((used)) static int hci_encrypt_req(struct hci_request *req, unsigned long opt)
{
 __u8 encrypt = opt;

 BT_DBG("%s %x", req->hdev->name, encrypt);


 hci_req_add(req, HCI_OP_WRITE_ENCRYPT_MODE, 1, &encrypt);
 return 0;
}
