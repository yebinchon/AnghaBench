
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_lpt_heap {int cnt; struct ubifs_lprops** arr; } ;
struct ubifs_lprops {int flags; int dirty; int free; int hpos; int lnum; } ;
struct ubifs_info {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 TYPE_1__* current ;
 int pr_err (char*,int,...) ;

void ubifs_dump_heap(struct ubifs_info *c, struct ubifs_lpt_heap *heap, int cat)
{
 int i;

 pr_err("(pid %d) start dumping heap cat %d (%d elements)\n",
        current->pid, cat, heap->cnt);
 for (i = 0; i < heap->cnt; i++) {
  struct ubifs_lprops *lprops = heap->arr[i];

  pr_err("\t%d. LEB %d hpos %d free %d dirty %d flags %d\n",
         i, lprops->lnum, lprops->hpos, lprops->free,
         lprops->dirty, lprops->flags);
 }
 pr_err("(pid %d) finish dumping heap\n", current->pid);
}
