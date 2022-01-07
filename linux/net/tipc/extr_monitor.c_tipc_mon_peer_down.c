
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_peer {int applied; int is_head; int is_up; int is_local; scalar_t__ down_cnt; struct tipc_mon_domain* domain; } ;
struct tipc_monitor {int lock; } ;
struct tipc_mon_domain {int dummy; } ;
struct net {int dummy; } ;


 struct tipc_peer* get_peer (struct tipc_monitor*,int ) ;
 struct tipc_peer* get_self (struct net*,int) ;
 int kfree (struct tipc_mon_domain*) ;
 int mon_assign_roles (struct tipc_monitor*,struct tipc_peer*) ;
 int mon_identify_lost_members (struct tipc_peer*,struct tipc_mon_domain*,int) ;
 int mon_update_local_domain (struct tipc_monitor*) ;
 struct tipc_peer* peer_head (struct tipc_peer*) ;
 int pr_warn (char*,int ,int) ;
 struct tipc_monitor* tipc_monitor (struct net*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void tipc_mon_peer_down(struct net *net, u32 addr, int bearer_id)
{
 struct tipc_monitor *mon = tipc_monitor(net, bearer_id);
 struct tipc_peer *self = get_self(net, bearer_id);
 struct tipc_peer *peer, *head;
 struct tipc_mon_domain *dom;
 int applied;

 write_lock_bh(&mon->lock);
 peer = get_peer(mon, addr);
 if (!peer) {
  pr_warn("Mon: unknown link %x/%u DOWN\n", addr, bearer_id);
  goto exit;
 }
 applied = peer->applied;
 peer->applied = 0;
 dom = peer->domain;
 peer->domain = ((void*)0);
 if (peer->is_head)
  mon_identify_lost_members(peer, dom, applied);
 kfree(dom);
 peer->is_up = 0;
 peer->is_head = 0;
 peer->is_local = 0;
 peer->down_cnt = 0;
 head = peer_head(peer);
 if (head == self)
  mon_update_local_domain(mon);
 mon_assign_roles(mon, head);
exit:
 write_unlock_bh(&mon->lock);
}
