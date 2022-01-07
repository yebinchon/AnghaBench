
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int * cpustat; } ;


 int __this_cpu_add (int ,int ) ;
 int cgroup_account_cputime_field (struct task_struct*,int,int ) ;
 TYPE_1__ kernel_cpustat ;

__attribute__((used)) static inline void task_group_account_field(struct task_struct *p, int index,
         u64 tmp)
{






 __this_cpu_add(kernel_cpustat.cpustat[index], tmp);

 cgroup_account_cputime_field(p, index, tmp);
}
