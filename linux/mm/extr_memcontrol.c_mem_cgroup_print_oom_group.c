
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cgroup; } ;
struct mem_cgroup {TYPE_1__ css; } ;


 int pr_cont (char*) ;
 int pr_cont_cgroup_path (int ) ;
 int pr_info (char*) ;

void mem_cgroup_print_oom_group(struct mem_cgroup *memcg)
{
 pr_info("Tasks in ");
 pr_cont_cgroup_path(memcg->css.cgroup);
 pr_cont(" are going to be killed due to memory.oom.group set\n");
}
