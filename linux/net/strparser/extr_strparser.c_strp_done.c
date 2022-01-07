
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strparser {int * skb_head; int work; int msg_timer_work; int stopped; } ;


 int WARN_ON (int) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int kfree_skb (int *) ;

void strp_done(struct strparser *strp)
{
 WARN_ON(!strp->stopped);

 cancel_delayed_work_sync(&strp->msg_timer_work);
 cancel_work_sync(&strp->work);

 if (strp->skb_head) {
  kfree_skb(strp->skb_head);
  strp->skb_head = ((void*)0);
 }
}
