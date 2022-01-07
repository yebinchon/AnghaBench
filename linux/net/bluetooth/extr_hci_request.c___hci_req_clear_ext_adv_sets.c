
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int dummy; } ;


 int HCI_OP_LE_CLEAR_ADV_SETS ;
 int hci_req_add (struct hci_request*,int ,int ,int *) ;

void __hci_req_clear_ext_adv_sets(struct hci_request *req)
{
 hci_req_add(req, HCI_OP_LE_CLEAR_ADV_SETS, 0, ((void*)0));
}
