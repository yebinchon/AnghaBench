
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 int mem_cgroup_id_put_many (struct mem_cgroup*,int) ;

__attribute__((used)) static inline void mem_cgroup_id_put(struct mem_cgroup *memcg)
{
 mem_cgroup_id_put_many(memcg, 1);
}
