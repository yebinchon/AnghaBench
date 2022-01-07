
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_pnode {TYPE_1__* lprops; } ;
struct ubifs_info {int dummy; } ;
struct TYPE_2__ {int flags; int lnum; } ;


 int LPROPS_CAT_MASK ;
 int UBIFS_LPT_FANOUT ;
 int ubifs_add_to_cat (struct ubifs_info*,TYPE_1__*,int) ;

__attribute__((used)) static void update_cats(struct ubifs_info *c, struct ubifs_pnode *pnode)
{
 int i;

 for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
  int cat = pnode->lprops[i].flags & LPROPS_CAT_MASK;
  int lnum = pnode->lprops[i].lnum;

  if (!lnum)
   return;
  ubifs_add_to_cat(c, &pnode->lprops[i], cat);
 }
}
