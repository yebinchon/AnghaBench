
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_peer {scalar_t__ addr; scalar_t__ applied; int is_up; struct tipc_mon_domain* domain; } ;
struct tipc_monitor {int dummy; } ;
struct tipc_mon_domain {int member_cnt; scalar_t__* members; } ;


 struct tipc_peer* peer_nxt (struct tipc_peer*) ;

__attribute__((used)) static void mon_apply_domain(struct tipc_monitor *mon,
        struct tipc_peer *peer)
{
 struct tipc_mon_domain *dom = peer->domain;
 struct tipc_peer *member;
 u32 addr;
 int i;

 if (!dom || !peer->is_up)
  return;


 peer->applied = 0;
 member = peer_nxt(peer);
 for (i = 0; i < dom->member_cnt; i++) {
  addr = dom->members[i];
  if (addr != member->addr)
   return;
  peer->applied++;
  member = peer_nxt(member);
 }
}
