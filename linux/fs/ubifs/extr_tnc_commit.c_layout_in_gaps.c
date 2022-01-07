
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx_lebs; } ;
struct ubifs_info {int* gap_lebs; int ileb_cnt; int bi; TYPE_1__ lst; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_NOFS ;
 int dbg_gc (char*,int,...) ;
 int dbg_is_chk_index (struct ubifs_info*) ;
 int get_leb_cnt (struct ubifs_info*,int) ;
 int kfree (int*) ;
 int* kmalloc_array (int,int,int ) ;
 int layout_leb_in_gaps (struct ubifs_info*,int*) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_dump_budg (struct ubifs_info*,int *) ;
 int ubifs_dump_lprops (struct ubifs_info*) ;
 int ubifs_warn (struct ubifs_info*,char*) ;

__attribute__((used)) static int layout_in_gaps(struct ubifs_info *c, int cnt)
{
 int err, leb_needed_cnt, written, *p;

 dbg_gc("%d znodes to write", cnt);

 c->gap_lebs = kmalloc_array(c->lst.idx_lebs + 1, sizeof(int),
        GFP_NOFS);
 if (!c->gap_lebs)
  return -ENOMEM;

 p = c->gap_lebs;
 do {
  ubifs_assert(c, p < c->gap_lebs + c->lst.idx_lebs);
  written = layout_leb_in_gaps(c, p);
  if (written < 0) {
   err = written;
   if (err != -ENOSPC) {
    kfree(c->gap_lebs);
    c->gap_lebs = ((void*)0);
    return err;
   }
   if (!dbg_is_chk_index(c)) {




    ubifs_warn(c, "out of space");
    ubifs_dump_budg(c, &c->bi);
    ubifs_dump_lprops(c);
   }

   break;
  }
  p++;
  cnt -= written;
  leb_needed_cnt = get_leb_cnt(c, cnt);
  dbg_gc("%d znodes remaining, need %d LEBs, have %d", cnt,
         leb_needed_cnt, c->ileb_cnt);
 } while (leb_needed_cnt > c->ileb_cnt);

 *p = -1;
 return 0;
}
