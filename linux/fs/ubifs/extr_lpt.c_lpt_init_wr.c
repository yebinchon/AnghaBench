
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_lpt_lprops {int dummy; } ;
struct ubifs_info {int lpt_lebs; scalar_t__ leb_size; scalar_t__ lpt_first; TYPE_1__* ltab; int lsave; int lsave_cnt; scalar_t__ big_lpt; void* lpt_buf; void* ltab_cmt; } ;
struct TYPE_2__ {scalar_t__ free; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ array_size (int,int) ;
 int kmalloc_array (int ,int,int ) ;
 int read_lsave (struct ubifs_info*) ;
 int ubifs_leb_unmap (struct ubifs_info*,scalar_t__) ;
 void* vmalloc (scalar_t__) ;

__attribute__((used)) static int lpt_init_wr(struct ubifs_info *c)
{
 int err, i;

 c->ltab_cmt = vmalloc(array_size(sizeof(struct ubifs_lpt_lprops),
      c->lpt_lebs));
 if (!c->ltab_cmt)
  return -ENOMEM;

 c->lpt_buf = vmalloc(c->leb_size);
 if (!c->lpt_buf)
  return -ENOMEM;

 if (c->big_lpt) {
  c->lsave = kmalloc_array(c->lsave_cnt, sizeof(int), GFP_NOFS);
  if (!c->lsave)
   return -ENOMEM;
  err = read_lsave(c);
  if (err)
   return err;
 }

 for (i = 0; i < c->lpt_lebs; i++)
  if (c->ltab[i].free == c->leb_size) {
   err = ubifs_leb_unmap(c, i + c->lpt_first);
   if (err)
    return err;
  }

 return 0;
}
