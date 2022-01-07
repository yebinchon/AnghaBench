
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_lprops {int dummy; } ;
struct ubifs_lp_stats {int dummy; } ;
struct ubifs_info {int main_first; int leb_cnt; } ;
struct TYPE_2__ {int pid; } ;


 TYPE_1__* current ;
 int pr_err (char*,int ) ;
 int ubifs_dump_lprop (struct ubifs_info*,struct ubifs_lprops*) ;
 int ubifs_dump_lstats (struct ubifs_lp_stats*) ;
 int ubifs_err (struct ubifs_info*,char*,int) ;
 int ubifs_get_lp_stats (struct ubifs_info*,struct ubifs_lp_stats*) ;
 int ubifs_read_one_lp (struct ubifs_info*,int,struct ubifs_lprops*) ;

void ubifs_dump_lprops(struct ubifs_info *c)
{
 int lnum, err;
 struct ubifs_lprops lp;
 struct ubifs_lp_stats lst;

 pr_err("(pid %d) start dumping LEB properties\n", current->pid);
 ubifs_get_lp_stats(c, &lst);
 ubifs_dump_lstats(&lst);

 for (lnum = c->main_first; lnum < c->leb_cnt; lnum++) {
  err = ubifs_read_one_lp(c, lnum, &lp);
  if (err) {
   ubifs_err(c, "cannot read lprops for LEB %d", lnum);
   continue;
  }

  ubifs_dump_lprop(c, &lp);
 }
 pr_err("(pid %d) finish dumping LEB properties\n", current->pid);
}
