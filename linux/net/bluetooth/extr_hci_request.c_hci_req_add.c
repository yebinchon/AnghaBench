
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hci_request {int dummy; } ;


 int hci_req_add_ev (struct hci_request*,int ,int ,void const*,int ) ;

void hci_req_add(struct hci_request *req, u16 opcode, u32 plen,
   const void *param)
{
 hci_req_add_ev(req, opcode, plen, param, 0);
}
