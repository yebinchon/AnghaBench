
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sugov_policy {int limits_changed; } ;
struct sugov_cpu {scalar_t__ bw_dl; int cpu; } ;


 scalar_t__ cpu_bw_dl (int ) ;
 int cpu_rq (int ) ;

__attribute__((used)) static inline void ignore_dl_rate_limit(struct sugov_cpu *sg_cpu, struct sugov_policy *sg_policy)
{
 if (cpu_bw_dl(cpu_rq(sg_cpu->cpu)) > sg_cpu->bw_dl)
  sg_policy->limits_changed = 1;
}
