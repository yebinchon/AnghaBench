
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_lp_stats {int total_dead; int total_dark; int total_used; int total_dirty; int total_free; int taken_empty_lebs; int idx_lebs; int empty_lebs; } ;
struct TYPE_2__ {int pid; } ;


 TYPE_1__* current ;
 int dbg_lock ;
 int pr_err (char*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ubifs_dump_lstats(const struct ubifs_lp_stats *lst)
{
 spin_lock(&dbg_lock);
 pr_err("(pid %d) Lprops statistics: empty_lebs %d, idx_lebs  %d\n",
        current->pid, lst->empty_lebs, lst->idx_lebs);
 pr_err("\ttaken_empty_lebs %d, total_free %lld, total_dirty %lld\n",
        lst->taken_empty_lebs, lst->total_free, lst->total_dirty);
 pr_err("\ttotal_used %lld, total_dark %lld, total_dead %lld\n",
        lst->total_used, lst->total_dark, lst->total_dead);
 spin_unlock(&dbg_lock);
}
