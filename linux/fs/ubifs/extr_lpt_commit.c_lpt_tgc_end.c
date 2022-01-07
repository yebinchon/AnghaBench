
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int lpt_lebs; scalar_t__ lpt_first; TYPE_1__* ltab; } ;
struct TYPE_2__ {scalar_t__ tgc; } ;


 int dbg_lp (char*,scalar_t__) ;
 int ubifs_leb_unmap (struct ubifs_info*,scalar_t__) ;

__attribute__((used)) static int lpt_tgc_end(struct ubifs_info *c)
{
 int i, err;

 for (i = 0; i < c->lpt_lebs; i++)
  if (c->ltab[i].tgc) {
   err = ubifs_leb_unmap(c, i + c->lpt_first);
   if (err)
    return err;
   c->ltab[i].tgc = 0;
   dbg_lp("LEB %d", i + c->lpt_first);
  }
 return 0;
}
