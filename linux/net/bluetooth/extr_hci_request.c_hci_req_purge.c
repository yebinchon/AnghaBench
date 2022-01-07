
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int cmd_q; } ;


 int skb_queue_purge (int *) ;

void hci_req_purge(struct hci_request *req)
{
 skb_queue_purge(&req->cmd_q);
}
