
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_pnode {TYPE_1__* lprops; } ;
struct ubifs_info {int dummy; } ;
struct TYPE_3__ {int lnum; } ;


 int UBIFS_LPT_FANOUT ;
 int ubifs_replace_cat (struct ubifs_info*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void replace_cats(struct ubifs_info *c, struct ubifs_pnode *old_pnode,
    struct ubifs_pnode *new_pnode)
{
 int i;

 for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
  if (!new_pnode->lprops[i].lnum)
   return;
  ubifs_replace_cat(c, &old_pnode->lprops[i],
      &new_pnode->lprops[i]);
 }
}
