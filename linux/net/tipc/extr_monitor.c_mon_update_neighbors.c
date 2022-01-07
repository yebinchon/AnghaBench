
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_peer {int dummy; } ;
struct tipc_monitor {int peer_cnt; } ;


 int dom_size (int ) ;
 int mon_apply_domain (struct tipc_monitor*,struct tipc_peer*) ;
 struct tipc_peer* peer_prev (struct tipc_peer*) ;

__attribute__((used)) static void mon_update_neighbors(struct tipc_monitor *mon,
     struct tipc_peer *peer)
{
 int dz, i;

 dz = dom_size(mon->peer_cnt);
 for (i = 0; i < dz; i++) {
  mon_apply_domain(mon, peer);
  peer = peer_prev(peer);
 }
}
