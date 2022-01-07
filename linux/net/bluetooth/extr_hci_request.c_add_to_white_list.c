
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int dummy; } ;
struct hci_cp_le_add_to_white_list {int bdaddr; int bdaddr_type; } ;
struct hci_conn_params {int addr; int addr_type; } ;
typedef int cp ;


 int HCI_OP_LE_ADD_TO_WHITE_LIST ;
 int bacpy (int *,int *) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_le_add_to_white_list*) ;

__attribute__((used)) static void add_to_white_list(struct hci_request *req,
         struct hci_conn_params *params)
{
 struct hci_cp_le_add_to_white_list cp;

 cp.bdaddr_type = params->addr_type;
 bacpy(&cp.bdaddr, &params->addr);

 hci_req_add(req, HCI_OP_LE_ADD_TO_WHITE_LIST, sizeof(cp), &cp);
}
