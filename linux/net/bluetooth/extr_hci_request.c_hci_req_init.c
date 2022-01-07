
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {scalar_t__ err; struct hci_dev* hdev; int cmd_q; } ;
struct hci_dev {int dummy; } ;


 int skb_queue_head_init (int *) ;

void hci_req_init(struct hci_request *req, struct hci_dev *hdev)
{
 skb_queue_head_init(&req->cmd_q);
 req->hdev = hdev;
 req->err = 0;
}
