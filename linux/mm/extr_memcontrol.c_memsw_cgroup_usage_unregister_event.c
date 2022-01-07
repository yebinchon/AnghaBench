
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
struct eventfd_ctx {int dummy; } ;


 int _MEMSWAP ;
 void __mem_cgroup_usage_unregister_event (struct mem_cgroup*,struct eventfd_ctx*,int ) ;

__attribute__((used)) static void memsw_cgroup_usage_unregister_event(struct mem_cgroup *memcg,
 struct eventfd_ctx *eventfd)
{
 return __mem_cgroup_usage_unregister_event(memcg, eventfd, _MEMSWAP);
}
