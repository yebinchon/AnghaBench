
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tipc_link {int bc_peer_is_up; void* state; int ackers; scalar_t__ snd_nxt; } ;
struct sk_buff_head {int dummy; } ;


 void* LINK_ESTABLISHED ;
 void* LINK_RESET ;
 int TIPC_DUMP_ALL ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int tipc_link_bc_ack_rcv (struct tipc_link*,scalar_t__,struct sk_buff_head*) ;
 int tipc_link_reset (struct tipc_link*) ;
 int trace_tipc_link_reset (struct tipc_link*,int ,char*) ;

void tipc_link_remove_bc_peer(struct tipc_link *snd_l,
         struct tipc_link *rcv_l,
         struct sk_buff_head *xmitq)
{
 u16 ack = snd_l->snd_nxt - 1;

 snd_l->ackers--;
 rcv_l->bc_peer_is_up = 1;
 rcv_l->state = LINK_ESTABLISHED;
 tipc_link_bc_ack_rcv(rcv_l, ack, xmitq);
 trace_tipc_link_reset(rcv_l, TIPC_DUMP_ALL, "bclink removed!");
 tipc_link_reset(rcv_l);
 rcv_l->state = LINK_RESET;
 if (!snd_l->ackers) {
  trace_tipc_link_reset(snd_l, TIPC_DUMP_ALL, "zero ackers!");
  tipc_link_reset(snd_l);
  snd_l->state = LINK_RESET;
  __skb_queue_purge(xmitq);
 }
}
