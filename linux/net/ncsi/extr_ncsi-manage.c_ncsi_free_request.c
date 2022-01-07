
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ncsi_request {int enabled; int used; int flags; struct sk_buff* rsp; struct sk_buff* cmd; int timer; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {scalar_t__ pending_req_num; int work; int lock; } ;


 int NCSI_REQ_FLAG_EVENT_DRIVEN ;
 int consume_skb (struct sk_buff*) ;
 int del_timer_sync (int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ncsi_free_request(struct ncsi_request *nr)
{
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct sk_buff *cmd, *rsp;
 unsigned long flags;
 bool driven;

 if (nr->enabled) {
  nr->enabled = 0;
  del_timer_sync(&nr->timer);
 }

 spin_lock_irqsave(&ndp->lock, flags);
 cmd = nr->cmd;
 rsp = nr->rsp;
 nr->cmd = ((void*)0);
 nr->rsp = ((void*)0);
 nr->used = 0;
 driven = !!(nr->flags & NCSI_REQ_FLAG_EVENT_DRIVEN);
 spin_unlock_irqrestore(&ndp->lock, flags);

 if (driven && cmd && --ndp->pending_req_num == 0)
  schedule_work(&ndp->work);


 consume_skb(cmd);
 consume_skb(rsp);
}
