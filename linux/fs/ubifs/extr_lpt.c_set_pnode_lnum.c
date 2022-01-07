
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_pnode {int num; TYPE_1__* lprops; } ;
struct ubifs_info {int main_first; int leb_cnt; } ;
struct TYPE_2__ {int lnum; } ;


 int UBIFS_LPT_FANOUT ;
 int UBIFS_LPT_FANOUT_SHIFT ;

__attribute__((used)) static void set_pnode_lnum(const struct ubifs_info *c,
      struct ubifs_pnode *pnode)
{
 int i, lnum;

 lnum = (pnode->num << UBIFS_LPT_FANOUT_SHIFT) + c->main_first;
 for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
  if (lnum >= c->leb_cnt)
   return;
  pnode->lprops[i].lnum = lnum++;
 }
}
