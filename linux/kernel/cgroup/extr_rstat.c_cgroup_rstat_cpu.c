
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_rstat_cpu {int dummy; } ;
struct cgroup {int rstat_cpu; } ;


 struct cgroup_rstat_cpu* per_cpu_ptr (int ,int) ;

__attribute__((used)) static struct cgroup_rstat_cpu *cgroup_rstat_cpu(struct cgroup *cgrp, int cpu)
{
 return per_cpu_ptr(cgrp->rstat_cpu, cpu);
}
