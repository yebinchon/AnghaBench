
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_request {TYPE_1__* hdev; } ;
typedef int __le16 ;
struct TYPE_2__ {int name; } ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_OP_WRITE_DEF_LINK_POLICY ;
 int cpu_to_le16 (unsigned long) ;
 int hci_req_add (struct hci_request*,int ,int,int *) ;

__attribute__((used)) static int hci_linkpol_req(struct hci_request *req, unsigned long opt)
{
 __le16 policy = cpu_to_le16(opt);

 BT_DBG("%s %x", req->hdev->name, policy);


 hci_req_add(req, HCI_OP_WRITE_DEF_LINK_POLICY, 2, &policy);
 return 0;
}
