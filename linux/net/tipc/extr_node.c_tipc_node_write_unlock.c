
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct list_head {int dummy; } ;
struct tipc_node {int action_flags; int addr; int link_id; int lock; struct list_head publ_list; struct net* net; } ;
struct net {int dummy; } ;


 int TIPC_LINK_STATE ;
 int TIPC_NODE_SCOPE ;
 int TIPC_NOTIFY_LINK_DOWN ;
 int TIPC_NOTIFY_LINK_UP ;
 int TIPC_NOTIFY_NODE_DOWN ;
 int TIPC_NOTIFY_NODE_UP ;
 scalar_t__ likely (int) ;
 int tipc_mon_peer_down (struct net*,int,int) ;
 int tipc_mon_peer_up (struct net*,int,int) ;
 int tipc_named_node_up (struct net*,int) ;
 int tipc_nametbl_publish (struct net*,int ,int,int,int ,int,int) ;
 int tipc_nametbl_withdraw (struct net*,int ,int,int,int) ;
 int tipc_publ_notify (struct net*,struct list_head*,int) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void tipc_node_write_unlock(struct tipc_node *n)
{
 struct net *net = n->net;
 u32 addr = 0;
 u32 flags = n->action_flags;
 u32 link_id = 0;
 u32 bearer_id;
 struct list_head *publ_list;

 if (likely(!flags)) {
  write_unlock_bh(&n->lock);
  return;
 }

 addr = n->addr;
 link_id = n->link_id;
 bearer_id = link_id & 0xffff;
 publ_list = &n->publ_list;

 n->action_flags &= ~(TIPC_NOTIFY_NODE_DOWN | TIPC_NOTIFY_NODE_UP |
        TIPC_NOTIFY_LINK_DOWN | TIPC_NOTIFY_LINK_UP);

 write_unlock_bh(&n->lock);

 if (flags & TIPC_NOTIFY_NODE_DOWN)
  tipc_publ_notify(net, publ_list, addr);

 if (flags & TIPC_NOTIFY_NODE_UP)
  tipc_named_node_up(net, addr);

 if (flags & TIPC_NOTIFY_LINK_UP) {
  tipc_mon_peer_up(net, addr, bearer_id);
  tipc_nametbl_publish(net, TIPC_LINK_STATE, addr, addr,
         TIPC_NODE_SCOPE, link_id, link_id);
 }
 if (flags & TIPC_NOTIFY_LINK_DOWN) {
  tipc_mon_peer_down(net, addr, bearer_id);
  tipc_nametbl_withdraw(net, TIPC_LINK_STATE, addr,
          addr, link_id);
 }
}
