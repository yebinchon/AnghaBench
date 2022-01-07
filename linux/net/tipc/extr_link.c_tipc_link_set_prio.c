
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_link {int priority; } ;
struct sk_buff_head {int dummy; } ;


 int STATE_MSG ;
 int tipc_link_build_proto_msg (struct tipc_link*,int ,int ,int ,int ,int ,int ,struct sk_buff_head*) ;

void tipc_link_set_prio(struct tipc_link *l, u32 prio,
   struct sk_buff_head *xmitq)
{
 l->priority = prio;
 tipc_link_build_proto_msg(l, STATE_MSG, 0, 0, 0, 0, prio, xmitq);
}
