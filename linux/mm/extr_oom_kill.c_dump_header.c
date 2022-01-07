
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct oom_control {int nodemask; int memcg; scalar_t__ order; int gfp_mask; } ;
struct TYPE_4__ {TYPE_1__* signal; int comm; } ;
struct TYPE_3__ {int oom_score_adj; } ;


 int CONFIG_COMPACTION ;
 int IS_ENABLED (int ) ;
 int SHOW_MEM_FILTER_NODES ;
 TYPE_2__* current ;
 int dump_oom_summary (struct oom_control*,struct task_struct*) ;
 int dump_stack () ;
 int dump_tasks (struct oom_control*) ;
 int dump_unreclaimable_slab () ;
 scalar_t__ is_dump_unreclaim_slabs () ;
 scalar_t__ is_memcg_oom (struct oom_control*) ;
 int mem_cgroup_print_oom_meminfo (int ) ;
 int pr_warn (char*,...) ;
 int show_mem (int ,int ) ;
 scalar_t__ sysctl_oom_dump_tasks ;

__attribute__((used)) static void dump_header(struct oom_control *oc, struct task_struct *p)
{
 pr_warn("%s invoked oom-killer: gfp_mask=%#x(%pGg), order=%d, oom_score_adj=%hd\n",
  current->comm, oc->gfp_mask, &oc->gfp_mask, oc->order,
   current->signal->oom_score_adj);
 if (!IS_ENABLED(CONFIG_COMPACTION) && oc->order)
  pr_warn("COMPACTION is disabled!!!\n");

 dump_stack();
 if (is_memcg_oom(oc))
  mem_cgroup_print_oom_meminfo(oc->memcg);
 else {
  show_mem(SHOW_MEM_FILTER_NODES, oc->nodemask);
  if (is_dump_unreclaim_slabs())
   dump_unreclaimable_slab();
 }
 if (sysctl_oom_dump_tasks)
  dump_tasks(oc);
 if (p)
  dump_oom_summary(oc, p);
}
