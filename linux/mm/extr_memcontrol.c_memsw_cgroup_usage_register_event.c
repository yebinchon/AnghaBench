
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
struct eventfd_ctx {int dummy; } ;


 int _MEMSWAP ;
 int __mem_cgroup_usage_register_event (struct mem_cgroup*,struct eventfd_ctx*,char const*,int ) ;

__attribute__((used)) static int memsw_cgroup_usage_register_event(struct mem_cgroup *memcg,
 struct eventfd_ctx *eventfd, const char *args)
{
 return __mem_cgroup_usage_register_event(memcg, eventfd, args, _MEMSWAP);
}
