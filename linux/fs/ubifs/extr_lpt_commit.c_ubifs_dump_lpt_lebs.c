
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int lpt_lebs; scalar_t__ lpt_first; } ;
struct TYPE_2__ {int pid; } ;


 TYPE_1__* current ;
 int dump_lpt_leb (struct ubifs_info const*,scalar_t__) ;
 int pr_err (char*,int ) ;

void ubifs_dump_lpt_lebs(const struct ubifs_info *c)
{
 int i;

 pr_err("(pid %d) start dumping all LPT LEBs\n", current->pid);
 for (i = 0; i < c->lpt_lebs; i++)
  dump_lpt_leb(c, i + c->lpt_first);
 pr_err("(pid %d) finish dumping all LPT LEBs\n", current->pid);
}
