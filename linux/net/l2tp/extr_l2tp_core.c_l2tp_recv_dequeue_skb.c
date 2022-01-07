
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; } ;
struct l2tp_tunnel {TYPE_1__ stats; } ;
struct TYPE_5__ {int rx_bytes; int rx_packets; } ;
struct l2tp_session {int (* recv_skb ) (struct l2tp_session*,struct sk_buff*,int) ;int nr; int name; int nr_max; TYPE_2__ stats; struct l2tp_tunnel* tunnel; } ;
struct TYPE_6__ {int length; scalar_t__ has_seq; } ;


 int L2TP_MSG_SEQ ;
 TYPE_3__* L2TP_SKB_CB (struct sk_buff*) ;
 int atomic_long_add (int,int *) ;
 int atomic_long_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int l2tp_dbg (struct l2tp_session*,int ,char*,int ,int ) ;
 int skb_orphan (struct sk_buff*) ;
 int stub1 (struct l2tp_session*,struct sk_buff*,int) ;

__attribute__((used)) static void l2tp_recv_dequeue_skb(struct l2tp_session *session, struct sk_buff *skb)
{
 struct l2tp_tunnel *tunnel = session->tunnel;
 int length = L2TP_SKB_CB(skb)->length;




 skb_orphan(skb);

 atomic_long_inc(&tunnel->stats.rx_packets);
 atomic_long_add(length, &tunnel->stats.rx_bytes);
 atomic_long_inc(&session->stats.rx_packets);
 atomic_long_add(length, &session->stats.rx_bytes);

 if (L2TP_SKB_CB(skb)->has_seq) {

  session->nr++;
  session->nr &= session->nr_max;

  l2tp_dbg(session, L2TP_MSG_SEQ, "%s: updated nr to %hu\n",
    session->name, session->nr);
 }


 if (session->recv_skb != ((void*)0))
  (*session->recv_skb)(session, skb, L2TP_SKB_CB(skb)->length);
 else
  kfree_skb(skb);
}
