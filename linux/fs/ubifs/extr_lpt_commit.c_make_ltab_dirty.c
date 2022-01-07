
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ltab_lnum; int ltab_offs; int lpt_drty_flgs; int ltab_sz; } ;


 int LTAB_DIRTY ;
 int ubifs_add_lpt_dirt (struct ubifs_info*,int,int ) ;

__attribute__((used)) static int make_ltab_dirty(struct ubifs_info *c, int lnum, int offs)
{
 if (lnum != c->ltab_lnum || offs != c->ltab_offs)
  return 0;
 if (!(c->lpt_drty_flgs & LTAB_DIRTY)) {
  c->lpt_drty_flgs |= LTAB_DIRTY;
  ubifs_add_lpt_dirt(c, c->ltab_lnum, c->ltab_sz);
 }
 return 0;
}
