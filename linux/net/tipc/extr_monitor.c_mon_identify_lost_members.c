
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_peer {int applied; int down_cnt; scalar_t__ is_local; int is_up; struct tipc_mon_domain* domain; } ;
struct tipc_mon_domain {int up_map; } ;


 int map_get (int ,int) ;
 struct tipc_peer* peer_nxt (struct tipc_peer*) ;

__attribute__((used)) static void mon_identify_lost_members(struct tipc_peer *peer,
          struct tipc_mon_domain *dom_bef,
          int applied_bef)
{
 struct tipc_peer *member = peer;
 struct tipc_mon_domain *dom_aft = peer->domain;
 int applied_aft = peer->applied;
 int i;

 for (i = 0; i < applied_bef; i++) {
  member = peer_nxt(member);


  if (!member->is_up || !map_get(dom_bef->up_map, i))
   continue;


  if (member->is_local)
   continue;


  if (!applied_aft || (applied_aft < i)) {
   member->down_cnt = 1;
   continue;
  }


  if (!map_get(dom_aft->up_map, i))
   member->down_cnt++;
 }
}
