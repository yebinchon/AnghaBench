
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hci_request {int err; int cmd_q; struct hci_dev* hdev; } ;
struct TYPE_5__ {int lock; } ;
struct hci_dev {int cmd_work; int workqueue; TYPE_2__ cmd_q; } ;
typedef scalar_t__ hci_req_complete_t ;
typedef scalar_t__ hci_req_complete_skb_t ;
struct TYPE_4__ {int req_flags; scalar_t__ req_complete_skb; scalar_t__ req_complete; } ;
struct TYPE_6__ {TYPE_1__ hci; } ;


 int BT_DBG (char*,int ) ;
 int ENODATA ;
 int HCI_REQ_SKB ;
 TYPE_3__* bt_cb (struct sk_buff*) ;
 int queue_work (int ,int *) ;
 struct sk_buff* skb_peek_tail (int *) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_queue_len (int *) ;
 int skb_queue_purge (int *) ;
 int skb_queue_splice_tail (int *,TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int req_run(struct hci_request *req, hci_req_complete_t complete,
     hci_req_complete_skb_t complete_skb)
{
 struct hci_dev *hdev = req->hdev;
 struct sk_buff *skb;
 unsigned long flags;

 BT_DBG("length %u", skb_queue_len(&req->cmd_q));




 if (req->err) {
  skb_queue_purge(&req->cmd_q);
  return req->err;
 }


 if (skb_queue_empty(&req->cmd_q))
  return -ENODATA;

 skb = skb_peek_tail(&req->cmd_q);
 if (complete) {
  bt_cb(skb)->hci.req_complete = complete;
 } else if (complete_skb) {
  bt_cb(skb)->hci.req_complete_skb = complete_skb;
  bt_cb(skb)->hci.req_flags |= HCI_REQ_SKB;
 }

 spin_lock_irqsave(&hdev->cmd_q.lock, flags);
 skb_queue_splice_tail(&req->cmd_q, &hdev->cmd_q);
 spin_unlock_irqrestore(&hdev->cmd_q.lock, flags);

 queue_work(hdev->workqueue, &hdev->cmd_work);

 return 0;
}
