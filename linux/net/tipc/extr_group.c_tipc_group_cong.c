
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_member {int window; int advertised; int state; } ;
struct tipc_group {int* open; int net; } ;
struct sk_buff_head {int dummy; } ;


 int ADV_ACTIVE ;
 int ADV_IDLE ;
 int GRP_ADV_MSG ;
 int MBR_ACTIVE ;
 int MBR_JOINED ;
 int MBR_PENDING ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 struct tipc_member* tipc_group_find_dest (struct tipc_group*,int ,int ) ;
 int tipc_group_is_receiver (struct tipc_member*) ;
 int tipc_group_proto_xmit (struct tipc_group*,struct tipc_member*,int ,struct sk_buff_head*) ;
 int tipc_node_distr_xmit (int ,struct sk_buff_head*) ;

bool tipc_group_cong(struct tipc_group *grp, u32 dnode, u32 dport,
       int len, struct tipc_member **mbr)
{
 struct sk_buff_head xmitq;
 struct tipc_member *m;
 int adv, state;

 m = tipc_group_find_dest(grp, dnode, dport);
 if (!tipc_group_is_receiver(m)) {
  *mbr = ((void*)0);
  return 0;
 }
 *mbr = m;

 if (m->window >= len)
  return 0;

 *grp->open = 0;


 adv = m->advertised;
 state = m->state;
 if (state == MBR_JOINED && adv == ADV_IDLE)
  return 1;
 if (state == MBR_ACTIVE && adv == ADV_ACTIVE)
  return 1;
 if (state == MBR_PENDING && adv == ADV_IDLE)
  return 1;
 __skb_queue_head_init(&xmitq);
 tipc_group_proto_xmit(grp, m, GRP_ADV_MSG, &xmitq);
 tipc_node_distr_xmit(grp->net, &xmitq);
 return 1;
}
