
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sent_acks; } ;
struct tipc_link {int rcv_nxt; int snd_nxt; TYPE_1__ stats; scalar_t__ rcv_unacked; int net; } ;
struct sk_buff_head {int dummy; } ;


 int STATE_MSG ;
 int TIPC_LINK_SND_STATE ;
 scalar_t__ link_is_bc_rcvlink (struct tipc_link*) ;
 int tipc_link_build_proto_msg (struct tipc_link*,int ,int ,int ,int ,int ,int ,struct sk_buff_head*) ;
 int tipc_own_addr (int ) ;

int tipc_link_build_state_msg(struct tipc_link *l, struct sk_buff_head *xmitq)
{
 if (!l)
  return 0;


 if (link_is_bc_rcvlink(l)) {
  if (((l->rcv_nxt ^ tipc_own_addr(l->net)) & 0xf) != 0xf)
   return 0;
  l->rcv_unacked = 0;


  l->snd_nxt = l->rcv_nxt;
  return TIPC_LINK_SND_STATE;
 }


 l->rcv_unacked = 0;
 l->stats.sent_acks++;
 tipc_link_build_proto_msg(l, STATE_MSG, 0, 0, 0, 0, 0, xmitq);
 return 0;
}
