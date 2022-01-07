
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_peer {scalar_t__ addr; } ;
struct tipc_nl_msg {int dummy; } ;
struct tipc_monitor {int lock; struct tipc_peer* self; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int EMSGSIZE ;
 scalar_t__ __tipc_nl_add_monitor_peer (struct tipc_peer*,struct tipc_nl_msg*) ;
 struct tipc_peer* peer_nxt (struct tipc_peer*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct tipc_monitor* tipc_monitor (struct net*,scalar_t__) ;

int tipc_nl_add_monitor_peer(struct net *net, struct tipc_nl_msg *msg,
        u32 bearer_id, u32 *prev_node)
{
 struct tipc_monitor *mon = tipc_monitor(net, bearer_id);
 struct tipc_peer *peer;

 if (!mon)
  return -EINVAL;

 read_lock_bh(&mon->lock);
 peer = mon->self;
 do {
  if (*prev_node) {
   if (peer->addr == *prev_node)
    *prev_node = 0;
   else
    continue;
  }
  if (__tipc_nl_add_monitor_peer(peer, msg)) {
   *prev_node = peer->addr;
   read_unlock_bh(&mon->lock);
   return -EMSGSIZE;
  }
 } while ((peer = peer_nxt(peer)) != mon->self);
 read_unlock_bh(&mon->lock);

 return 0;
}
