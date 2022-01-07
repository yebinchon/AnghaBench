
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int state; scalar_t__ snd_nxt; scalar_t__ acked; int ackers; struct tipc_link* bc_rcvlink; } ;
struct sk_buff_head {int dummy; } ;


 int LINK_ESTABLISHED ;
 int tipc_link_build_bc_init_msg (struct tipc_link*,struct sk_buff_head*) ;

void tipc_link_add_bc_peer(struct tipc_link *snd_l,
      struct tipc_link *uc_l,
      struct sk_buff_head *xmitq)
{
 struct tipc_link *rcv_l = uc_l->bc_rcvlink;

 snd_l->ackers++;
 rcv_l->acked = snd_l->snd_nxt - 1;
 snd_l->state = LINK_ESTABLISHED;
 tipc_link_build_bc_init_msg(uc_l, xmitq);
}
