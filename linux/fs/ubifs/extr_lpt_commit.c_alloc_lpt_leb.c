
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int lpt_first; int lpt_lebs; scalar_t__ leb_size; TYPE_1__* ltab; } ;
struct TYPE_2__ {int cmt; scalar_t__ free; scalar_t__ tgc; } ;


 int ENOSPC ;

__attribute__((used)) static int alloc_lpt_leb(struct ubifs_info *c, int *lnum)
{
 int i, n;

 n = *lnum - c->lpt_first + 1;
 for (i = n; i < c->lpt_lebs; i++) {
  if (c->ltab[i].tgc || c->ltab[i].cmt)
   continue;
  if (c->ltab[i].free == c->leb_size) {
   c->ltab[i].cmt = 1;
   *lnum = i + c->lpt_first;
   return 0;
  }
 }

 for (i = 0; i < n; i++) {
  if (c->ltab[i].tgc || c->ltab[i].cmt)
   continue;
  if (c->ltab[i].free == c->leb_size) {
   c->ltab[i].cmt = 1;
   *lnum = i + c->lpt_first;
   return 0;
  }
 }
 return -ENOSPC;
}
