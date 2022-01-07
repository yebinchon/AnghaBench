
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int lsave_lnum; int lsave_offs; int lpt_drty_flgs; } ;


 int LSAVE_DIRTY ;

__attribute__((used)) static int dbg_is_lsave_dirty(struct ubifs_info *c, int lnum, int offs)
{
 if (lnum != c->lsave_lnum || offs != c->lsave_offs)
  return 1;
 return (c->lpt_drty_flgs & LSAVE_DIRTY) != 0;
}
