
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ltab_lnum; int ltab_offs; int lpt_drty_flgs; } ;


 int LTAB_DIRTY ;

__attribute__((used)) static int dbg_is_ltab_dirty(struct ubifs_info *c, int lnum, int offs)
{
 if (lnum != c->ltab_lnum || offs != c->ltab_offs)
  return 1;
 return (c->lpt_drty_flgs & LTAB_DIRTY) != 0;
}
