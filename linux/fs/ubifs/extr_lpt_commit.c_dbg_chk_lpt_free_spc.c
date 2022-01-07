
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int lpt_lebs; scalar_t__ lpt_first; scalar_t__ nhead_lnum; scalar_t__ leb_size; scalar_t__ nhead_offs; long long lpt_sz; TYPE_1__* ltab; } ;
struct TYPE_2__ {scalar_t__ free; scalar_t__ cmt; scalar_t__ tgc; } ;


 int EINVAL ;
 int dbg_is_chk_lprops (struct ubifs_info*) ;
 int dump_stack () ;
 int ubifs_dump_lpt_info (struct ubifs_info*) ;
 int ubifs_dump_lpt_lebs (struct ubifs_info*) ;
 int ubifs_err (struct ubifs_info*,char*,long long,long long) ;

int dbg_chk_lpt_free_spc(struct ubifs_info *c)
{
 long long free = 0;
 int i;

 if (!dbg_is_chk_lprops(c))
  return 0;

 for (i = 0; i < c->lpt_lebs; i++) {
  if (c->ltab[i].tgc || c->ltab[i].cmt)
   continue;
  if (i + c->lpt_first == c->nhead_lnum)
   free += c->leb_size - c->nhead_offs;
  else if (c->ltab[i].free == c->leb_size)
   free += c->leb_size;
 }
 if (free < c->lpt_sz) {
  ubifs_err(c, "LPT space error: free %lld lpt_sz %lld",
     free, c->lpt_sz);
  ubifs_dump_lpt_info(c);
  ubifs_dump_lpt_lebs(c);
  dump_stack();
  return -EINVAL;
 }
 return 0;
}
