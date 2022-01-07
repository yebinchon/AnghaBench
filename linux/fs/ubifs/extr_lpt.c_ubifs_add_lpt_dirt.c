
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int lpt_first; int lpt_last; TYPE_1__* ltab; } ;
struct TYPE_2__ {int dirty; } ;


 int dbg_lp (char*,int,int,int) ;
 int ubifs_assert (struct ubifs_info*,int) ;

void ubifs_add_lpt_dirt(struct ubifs_info *c, int lnum, int dirty)
{
 if (!dirty || !lnum)
  return;
 dbg_lp("LEB %d add %d to %d",
        lnum, dirty, c->ltab[lnum - c->lpt_first].dirty);
 ubifs_assert(c, lnum >= c->lpt_first && lnum <= c->lpt_last);
 c->ltab[lnum - c->lpt_first].dirty += dirty;
}
