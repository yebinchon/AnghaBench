
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct sk_buff_head inputq; } ;


 int __skb_queue_head_init (struct sk_buff_head*) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 TYPE_1__* tipc_bc_base (struct net*) ;
 struct tipc_link* tipc_bc_sndlink (struct net*) ;
 int tipc_bcast_lock (struct net*) ;
 int tipc_bcast_unlock (struct net*) ;
 int tipc_bcbase_calc_bc_threshold (struct net*) ;
 int tipc_bcbase_select_primary (struct net*) ;
 int tipc_bcbase_xmit (struct net*,struct sk_buff_head*) ;
 int tipc_link_remove_bc_peer (struct tipc_link*,struct tipc_link*,struct sk_buff_head*) ;
 int tipc_sk_rcv (struct net*,struct sk_buff_head*) ;

void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_l)
{
 struct tipc_link *snd_l = tipc_bc_sndlink(net);
 struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
 struct sk_buff_head xmitq;

 __skb_queue_head_init(&xmitq);

 tipc_bcast_lock(net);
 tipc_link_remove_bc_peer(snd_l, rcv_l, &xmitq);
 tipc_bcbase_select_primary(net);
 tipc_bcbase_calc_bc_threshold(net);
 tipc_bcast_unlock(net);

 tipc_bcbase_xmit(net, &xmitq);


 if (!skb_queue_empty(inputq))
  tipc_sk_rcv(net, inputq);
}
