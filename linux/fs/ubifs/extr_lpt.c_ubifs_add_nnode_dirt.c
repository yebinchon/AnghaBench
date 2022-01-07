
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_nnode {size_t iip; TYPE_1__* nbranch; struct ubifs_nnode* parent; } ;
struct ubifs_info {int lpt_drty_flgs; int ltab_sz; int ltab_lnum; int nnode_sz; int lpt_lnum; } ;
struct TYPE_2__ {int lnum; } ;


 int LTAB_DIRTY ;
 int ubifs_add_lpt_dirt (struct ubifs_info*,int ,int ) ;

void ubifs_add_nnode_dirt(struct ubifs_info *c, struct ubifs_nnode *nnode)
{
 struct ubifs_nnode *np = nnode->parent;

 if (np)
  ubifs_add_lpt_dirt(c, np->nbranch[nnode->iip].lnum,
       c->nnode_sz);
 else {
  ubifs_add_lpt_dirt(c, c->lpt_lnum, c->nnode_sz);
  if (!(c->lpt_drty_flgs & LTAB_DIRTY)) {
   c->lpt_drty_flgs |= LTAB_DIRTY;
   ubifs_add_lpt_dirt(c, c->ltab_lnum, c->ltab_sz);
  }
 }
}
