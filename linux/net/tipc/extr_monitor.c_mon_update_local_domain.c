
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u16 ;
struct tipc_peer {scalar_t__ addr; int is_up; scalar_t__ applied; struct tipc_mon_domain* domain; } ;
struct tipc_mon_domain {scalar_t__ up_map; scalar_t__ len; scalar_t__ member_cnt; scalar_t__* members; scalar_t__ gen; } ;
struct tipc_monitor {scalar_t__ dom_gen; int peer_cnt; struct tipc_mon_domain cache; struct tipc_peer* self; } ;


 scalar_t__ cpu_to_be64 (scalar_t__) ;
 scalar_t__ dom_rec_len (struct tipc_mon_domain*,scalar_t__) ;
 scalar_t__ dom_size (int ) ;
 scalar_t__ htonl (scalar_t__) ;
 void* htons (scalar_t__) ;
 int map_set (scalar_t__*,scalar_t__,int ) ;
 int mon_apply_domain (struct tipc_monitor*,struct tipc_peer*) ;
 struct tipc_peer* peer_nxt (struct tipc_peer*) ;

__attribute__((used)) static void mon_update_local_domain(struct tipc_monitor *mon)
{
 struct tipc_peer *self = mon->self;
 struct tipc_mon_domain *cache = &mon->cache;
 struct tipc_mon_domain *dom = self->domain;
 struct tipc_peer *peer = self;
 u64 prev_up_map = dom->up_map;
 u16 member_cnt, i;
 bool diff;


 member_cnt = dom_size(mon->peer_cnt) - 1;
 self->applied = member_cnt;


 dom->len = dom_rec_len(dom, member_cnt);
 diff = dom->member_cnt != member_cnt;
 dom->member_cnt = member_cnt;
 for (i = 0; i < member_cnt; i++) {
  peer = peer_nxt(peer);
  diff |= dom->members[i] != peer->addr;
  dom->members[i] = peer->addr;
  map_set(&dom->up_map, i, peer->is_up);
  cache->members[i] = htonl(peer->addr);
 }
 diff |= dom->up_map != prev_up_map;
 if (!diff)
  return;
 dom->gen = ++mon->dom_gen;
 cache->len = htons(dom->len);
 cache->gen = htons(dom->gen);
 cache->member_cnt = htons(member_cnt);
 cache->up_map = cpu_to_be64(dom->up_map);
 mon_apply_domain(mon, self);
}
