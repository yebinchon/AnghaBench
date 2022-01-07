
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rx_errors; } ;
struct l2tp_session {scalar_t__ magic; TYPE_1__ stats; int reorder_q; } ;


 int BUG_ON (int) ;
 scalar_t__ L2TP_SESSION_MAGIC ;
 int atomic_long_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static int l2tp_session_queue_purge(struct l2tp_session *session)
{
 struct sk_buff *skb = ((void*)0);
 BUG_ON(!session);
 BUG_ON(session->magic != L2TP_SESSION_MAGIC);
 while ((skb = skb_dequeue(&session->reorder_q))) {
  atomic_long_inc(&session->stats.rx_errors);
  kfree_skb(skb);
 }
 return 0;
}
