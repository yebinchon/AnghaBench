
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netprio_map {int priomap_len; int * priomap; } ;
struct net_device {int priomap; } ;
struct cgroup_subsys_state {TYPE_1__* cgroup; } ;
struct TYPE_2__ {int id; } ;


 struct netprio_map* rcu_dereference_rtnl (int ) ;

__attribute__((used)) static u32 netprio_prio(struct cgroup_subsys_state *css, struct net_device *dev)
{
 struct netprio_map *map = rcu_dereference_rtnl(dev->priomap);
 int id = css->cgroup->id;

 if (map && id < map->priomap_len)
  return map->priomap[id];
 return 0;
}
