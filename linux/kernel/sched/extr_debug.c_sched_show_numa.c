
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct mempolicy* mempolicy; scalar_t__ mm; } ;
struct seq_file {int dummy; } ;
struct mempolicy {int flags; } ;
struct TYPE_2__ {int numa_scan_seq; } ;


 int MPOL_F_MORON ;
 int P (int ) ;
 int SEQ_printf (struct seq_file*,char*,int ,int ) ;
 TYPE_1__* mm ;
 int mpol_get (struct mempolicy*) ;
 int mpol_put (struct mempolicy*) ;
 int numa_pages_migrated ;
 int numa_preferred_nid ;
 int show_numa_stats (struct task_struct*,struct seq_file*) ;
 int task_lock (struct task_struct*) ;
 int task_node (struct task_struct*) ;
 int task_numa_group_id (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int total_numa_faults ;

__attribute__((used)) static void sched_show_numa(struct task_struct *p, struct seq_file *m)
{
}
