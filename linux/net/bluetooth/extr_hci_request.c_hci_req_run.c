
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int dummy; } ;
typedef int hci_req_complete_t ;


 int req_run (struct hci_request*,int ,int *) ;

int hci_req_run(struct hci_request *req, hci_req_complete_t complete)
{
 return req_run(req, complete, ((void*)0));
}
