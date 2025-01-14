
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct ocfs2_per_slot_free_list {struct ocfs2_cached_block_free* f_first; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_cached_block_free {unsigned int free_bit; struct ocfs2_cached_block_free* free_next; void* free_blk; void* free_bg; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 struct ocfs2_cached_block_free* kzalloc (int,int ) ;
 int mlog_errno (int) ;
 struct ocfs2_per_slot_free_list* ocfs2_find_per_slot_free_list (int,int,struct ocfs2_cached_dealloc_ctxt*) ;
 int trace_ocfs2_cache_block_dealloc (int,int,unsigned long long,unsigned long long,unsigned int) ;

int ocfs2_cache_block_dealloc(struct ocfs2_cached_dealloc_ctxt *ctxt,
         int type, int slot, u64 suballoc,
         u64 blkno, unsigned int bit)
{
 int ret;
 struct ocfs2_per_slot_free_list *fl;
 struct ocfs2_cached_block_free *item;

 fl = ocfs2_find_per_slot_free_list(type, slot, ctxt);
 if (fl == ((void*)0)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 item = kzalloc(sizeof(*item), GFP_NOFS);
 if (item == ((void*)0)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 trace_ocfs2_cache_block_dealloc(type, slot,
     (unsigned long long)suballoc,
     (unsigned long long)blkno, bit);

 item->free_bg = suballoc;
 item->free_blk = blkno;
 item->free_bit = bit;
 item->free_next = fl->f_first;

 fl->f_first = item;

 ret = 0;
out:
 return ret;
}
