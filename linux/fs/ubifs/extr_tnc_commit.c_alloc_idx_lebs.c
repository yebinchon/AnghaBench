
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int* ilebs; scalar_t__ ileb_cnt; scalar_t__ ileb_nxt; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_NOFS ;
 int dbg_cmt (char*,int) ;
 scalar_t__ dbg_is_chk_index (struct ubifs_info*) ;
 int get_leb_cnt (struct ubifs_info*,int) ;
 int* kmalloc_array (int,int,int ) ;
 int prandom_u32 () ;
 int ubifs_find_free_leb_for_idx (struct ubifs_info*) ;

__attribute__((used)) static int alloc_idx_lebs(struct ubifs_info *c, int cnt)
{
 int i, leb_cnt, lnum;

 c->ileb_cnt = 0;
 c->ileb_nxt = 0;
 leb_cnt = get_leb_cnt(c, cnt);
 dbg_cmt("need about %d empty LEBS for TNC commit", leb_cnt);
 if (!leb_cnt)
  return 0;
 c->ilebs = kmalloc_array(leb_cnt, sizeof(int), GFP_NOFS);
 if (!c->ilebs)
  return -ENOMEM;
 for (i = 0; i < leb_cnt; i++) {
  lnum = ubifs_find_free_leb_for_idx(c);
  if (lnum < 0)
   return lnum;
  c->ilebs[c->ileb_cnt++] = lnum;
  dbg_cmt("LEB %d", lnum);
 }
 if (dbg_is_chk_index(c) && !(prandom_u32() & 7))
  return -ENOSPC;
 return 0;
}
