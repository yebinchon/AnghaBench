
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker_pool {scalar_t__ node; TYPE_1__* attrs; int flags; } ;
struct TYPE_2__ {int nice; int cpumask; } ;


 scalar_t__ NUMA_NO_NODE ;
 int nr_cpumask_bits ;
 int pr_cont (char*,scalar_t__,...) ;

__attribute__((used)) static void pr_cont_pool_info(struct worker_pool *pool)
{
 pr_cont(" cpus=%*pbl", nr_cpumask_bits, pool->attrs->cpumask);
 if (pool->node != NUMA_NO_NODE)
  pr_cont(" node=%d", pool->node);
 pr_cont(" flags=0x%x nice=%d", pool->flags, pool->attrs->nice);
}
