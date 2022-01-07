
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memcg_shrinker_map {int map; } ;
struct mem_cgroup {TYPE_1__** nodeinfo; } ;
struct TYPE_2__ {int shrinker_map; } ;


 int mem_cgroup_is_root (struct mem_cgroup*) ;
 struct memcg_shrinker_map* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int,int ) ;
 int smp_mb__before_atomic () ;

void memcg_set_shrinker_bit(struct mem_cgroup *memcg, int nid, int shrinker_id)
{
 if (shrinker_id >= 0 && memcg && !mem_cgroup_is_root(memcg)) {
  struct memcg_shrinker_map *map;

  rcu_read_lock();
  map = rcu_dereference(memcg->nodeinfo[nid]->shrinker_map);

  smp_mb__before_atomic();
  set_bit(shrinker_id, map->map);
  rcu_read_unlock();
 }
}
