
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {scalar_t__ sync_point; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;


 int LINK_FAILOVER_BEGIN_EVT ;
 int LINK_SYNCH_END_EVT ;
 int NODE_FAILOVER_BEGIN_EVT ;
 int NODE_SYNCH_END_EVT ;
 int U16_MAX ;
 int tipc_link_failover_prepare (struct tipc_link*,struct tipc_link*,struct sk_buff_head*) ;
 int tipc_link_fsm_evt (struct tipc_link*,int ) ;
 int tipc_link_is_reset (struct tipc_link*) ;
 int tipc_link_is_up (struct tipc_link*) ;
 scalar_t__ tipc_link_rcv_nxt (struct tipc_link*) ;
 int tipc_node_fsm_evt (struct tipc_node*,int ) ;

__attribute__((used)) static void tipc_node_link_failover(struct tipc_node *n, struct tipc_link *l,
        struct tipc_link *tnl,
        struct sk_buff_head *xmitq)
{

 if (!tipc_link_is_up(tnl))
  return;


 if (l && !tipc_link_is_reset(l))
  return;

 tipc_link_fsm_evt(tnl, LINK_SYNCH_END_EVT);
 tipc_node_fsm_evt(n, NODE_SYNCH_END_EVT);

 n->sync_point = tipc_link_rcv_nxt(tnl) + (U16_MAX / 2 - 1);
 tipc_link_failover_prepare(l, tnl, xmitq);

 if (l)
  tipc_link_fsm_evt(l, LINK_FAILOVER_BEGIN_EVT);
 tipc_node_fsm_evt(n, NODE_FAILOVER_BEGIN_EVT);
}
