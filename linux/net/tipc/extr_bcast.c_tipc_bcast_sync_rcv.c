
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_msg {int dummy; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct sk_buff_head inputq; } ;


 scalar_t__ STATE_MSG ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int msg_bc_ack_invalid (struct tipc_msg*) ;
 int msg_bcast_ack (struct tipc_msg*) ;
 scalar_t__ msg_type (struct tipc_msg*) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 TYPE_1__* tipc_bc_base (struct net*) ;
 int tipc_bcast_lock (struct net*) ;
 int tipc_bcast_unlock (struct net*) ;
 int tipc_bcbase_xmit (struct net*,struct sk_buff_head*) ;
 int tipc_link_bc_ack_rcv (struct tipc_link*,int ,struct sk_buff_head*) ;
 int tipc_link_bc_init_rcv (struct tipc_link*,struct tipc_msg*) ;
 int tipc_link_bc_sync_rcv (struct tipc_link*,struct tipc_msg*,struct sk_buff_head*) ;
 int tipc_sk_rcv (struct net*,struct sk_buff_head*) ;

int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
   struct tipc_msg *hdr)
{
 struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
 struct sk_buff_head xmitq;
 int rc = 0;

 __skb_queue_head_init(&xmitq);

 tipc_bcast_lock(net);
 if (msg_type(hdr) != STATE_MSG) {
  tipc_link_bc_init_rcv(l, hdr);
 } else if (!msg_bc_ack_invalid(hdr)) {
  tipc_link_bc_ack_rcv(l, msg_bcast_ack(hdr), &xmitq);
  rc = tipc_link_bc_sync_rcv(l, hdr, &xmitq);
 }
 tipc_bcast_unlock(net);

 tipc_bcbase_xmit(net, &xmitq);


 if (!skb_queue_empty(inputq))
  tipc_sk_rcv(net, inputq);
 return rc;
}
