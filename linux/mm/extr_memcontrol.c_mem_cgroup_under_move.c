
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_cgroup {int dummy; } ;
struct TYPE_2__ {int lock; struct mem_cgroup* to; struct mem_cgroup* from; } ;


 TYPE_1__ mc ;
 scalar_t__ mem_cgroup_is_descendant (struct mem_cgroup*,struct mem_cgroup*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool mem_cgroup_under_move(struct mem_cgroup *memcg)
{
 struct mem_cgroup *from;
 struct mem_cgroup *to;
 bool ret = 0;




 spin_lock(&mc.lock);
 from = mc.from;
 to = mc.to;
 if (!from)
  goto unlock;

 ret = mem_cgroup_is_descendant(from, memcg) ||
  mem_cgroup_is_descendant(to, memcg);
unlock:
 spin_unlock(&mc.lock);
 return ret;
}
