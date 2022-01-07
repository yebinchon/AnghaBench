
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int dummy; } ;
typedef int hci_req_complete_skb_t ;


 int req_run (struct hci_request*,int *,int ) ;

int hci_req_run_skb(struct hci_request *req, hci_req_complete_skb_t complete)
{
 return req_run(req, ((void*)0), complete);
}
