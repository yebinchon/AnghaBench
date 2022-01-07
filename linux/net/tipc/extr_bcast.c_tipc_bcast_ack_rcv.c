
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct sk_buff_head inputq; } ;


 int __skb_queue_head_init (struct sk_buff_head*) ;
 scalar_t__ msg_bc_ack_invalid (struct tipc_msg*) ;
 int msg_bcast_ack (struct tipc_msg*) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 TYPE_1__* tipc_bc_base (struct net*) ;
 int tipc_bcast_lock (struct net*) ;
 int tipc_bcast_unlock (struct net*) ;
 int tipc_bcbase_xmit (struct net*,struct sk_buff_head*) ;
 int tipc_link_bc_ack_rcv (struct tipc_link*,int ,struct sk_buff_head*) ;
 int tipc_sk_rcv (struct net*,struct sk_buff_head*) ;

void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
   struct tipc_msg *hdr)
{
 struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
 u16 acked = msg_bcast_ack(hdr);
 struct sk_buff_head xmitq;


 if (msg_bc_ack_invalid(hdr))
  return;

 __skb_queue_head_init(&xmitq);

 tipc_bcast_lock(net);
 tipc_link_bc_ack_rcv(l, acked, &xmitq);
 tipc_bcast_unlock(net);

 tipc_bcbase_xmit(net, &xmitq);


 if (!skb_queue_empty(inputq))
  tipc_sk_rcv(net, inputq);
}
