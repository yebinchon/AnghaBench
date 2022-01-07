
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gc_inode_list {int iroot; int ilist; } ;
struct f2fs_sb_info {unsigned long long* skipped_atomic_files; unsigned long long skipped_gc_rwsem; int segs_per_sec; int gc_mutex; TYPE_1__* sb; void* cur_victim_sec; } ;
struct cp_control {int reason; } ;
struct TYPE_5__ {unsigned int* last_victim; } ;
struct TYPE_4__ {int s_flags; } ;


 size_t ALLOC_NEXT ;
 size_t BG_GC ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENODATA ;
 int F2FS_DIRTY_DENTS ;
 int F2FS_DIRTY_IMETA ;
 int F2FS_DIRTY_NODES ;
 size_t FG_GC ;
 size_t FLUSH_DEVICE ;
 int GFP_NOFS ;
 int LIST_HEAD_INIT (int ) ;
 unsigned int MAX_SKIP_GC_COUNT ;
 void* NULL_SEGNO ;
 int RADIX_TREE_INIT (int ,int ) ;
 int SBI_CP_DISABLED ;
 int SB_ACTIVE ;
 TYPE_3__* SIT_I (struct f2fs_sb_info*) ;
 int __get_cp_reason (struct f2fs_sb_info*) ;
 int __get_victim (struct f2fs_sb_info*,unsigned int*,int) ;
 int do_garbage_collect (struct f2fs_sb_info*,unsigned int,struct gc_inode_list*,int) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_drop_inmem_pages_all (struct f2fs_sb_info*,int) ;
 int f2fs_write_checkpoint (struct f2fs_sb_info*,struct cp_control*) ;
 int free_sections (struct f2fs_sb_info*) ;
 int free_segments (struct f2fs_sb_info*) ;
 int get_pages (struct f2fs_sb_info*,int ) ;
 scalar_t__ has_not_enough_free_secs (struct f2fs_sb_info*,int,int ) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int mutex_unlock (int *) ;
 scalar_t__ prefree_segments (struct f2fs_sb_info*) ;
 int put_gc_inode (struct gc_inode_list*) ;
 int reserved_segments (struct f2fs_sb_info*) ;
 int trace_f2fs_gc_begin (TYPE_1__*,int,int,int ,int ,int ,int ,int ,int ,scalar_t__) ;
 int trace_f2fs_gc_end (TYPE_1__*,int,int,int,int ,int ,int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

int f2fs_gc(struct f2fs_sb_info *sbi, bool sync,
   bool background, unsigned int segno)
{
 int gc_type = sync ? FG_GC : BG_GC;
 int sec_freed = 0, seg_freed = 0, total_freed = 0;
 int ret = 0;
 struct cp_control cpc;
 unsigned int init_segno = segno;
 struct gc_inode_list gc_list = {
  .ilist = LIST_HEAD_INIT(gc_list.ilist),
  .iroot = RADIX_TREE_INIT(gc_list.iroot, GFP_NOFS),
 };
 unsigned long long last_skipped = sbi->skipped_atomic_files[FG_GC];
 unsigned long long first_skipped;
 unsigned int skipped_round = 0, round = 0;

 trace_f2fs_gc_begin(sbi->sb, sync, background,
    get_pages(sbi, F2FS_DIRTY_NODES),
    get_pages(sbi, F2FS_DIRTY_DENTS),
    get_pages(sbi, F2FS_DIRTY_IMETA),
    free_sections(sbi),
    free_segments(sbi),
    reserved_segments(sbi),
    prefree_segments(sbi));

 cpc.reason = __get_cp_reason(sbi);
 sbi->skipped_gc_rwsem = 0;
 first_skipped = last_skipped;
gc_more:
 if (unlikely(!(sbi->sb->s_flags & SB_ACTIVE))) {
  ret = -EINVAL;
  goto stop;
 }
 if (unlikely(f2fs_cp_error(sbi))) {
  ret = -EIO;
  goto stop;
 }

 if (gc_type == BG_GC && has_not_enough_free_secs(sbi, 0, 0)) {





  if (prefree_segments(sbi) &&
    !is_sbi_flag_set(sbi, SBI_CP_DISABLED)) {
   ret = f2fs_write_checkpoint(sbi, &cpc);
   if (ret)
    goto stop;
  }
  if (has_not_enough_free_secs(sbi, 0, 0))
   gc_type = FG_GC;
 }


 if (gc_type == BG_GC && !background) {
  ret = -EINVAL;
  goto stop;
 }
 if (!__get_victim(sbi, &segno, gc_type)) {
  ret = -ENODATA;
  goto stop;
 }

 seg_freed = do_garbage_collect(sbi, segno, &gc_list, gc_type);
 if (gc_type == FG_GC && seg_freed == sbi->segs_per_sec)
  sec_freed++;
 total_freed += seg_freed;

 if (gc_type == FG_GC) {
  if (sbi->skipped_atomic_files[FG_GC] > last_skipped ||
      sbi->skipped_gc_rwsem)
   skipped_round++;
  last_skipped = sbi->skipped_atomic_files[FG_GC];
  round++;
 }

 if (gc_type == FG_GC && seg_freed)
  sbi->cur_victim_sec = NULL_SEGNO;

 if (sync)
  goto stop;

 if (has_not_enough_free_secs(sbi, sec_freed, 0)) {
  if (skipped_round <= MAX_SKIP_GC_COUNT ||
     skipped_round * 2 < round) {
   segno = NULL_SEGNO;
   goto gc_more;
  }

  if (first_skipped < last_skipped &&
    (last_skipped - first_skipped) >
      sbi->skipped_gc_rwsem) {
   f2fs_drop_inmem_pages_all(sbi, 1);
   segno = NULL_SEGNO;
   goto gc_more;
  }
  if (gc_type == FG_GC && !is_sbi_flag_set(sbi, SBI_CP_DISABLED))
   ret = f2fs_write_checkpoint(sbi, &cpc);
 }
stop:
 SIT_I(sbi)->last_victim[ALLOC_NEXT] = 0;
 SIT_I(sbi)->last_victim[FLUSH_DEVICE] = init_segno;

 trace_f2fs_gc_end(sbi->sb, ret, total_freed, sec_freed,
    get_pages(sbi, F2FS_DIRTY_NODES),
    get_pages(sbi, F2FS_DIRTY_DENTS),
    get_pages(sbi, F2FS_DIRTY_IMETA),
    free_sections(sbi),
    free_segments(sbi),
    reserved_segments(sbi),
    prefree_segments(sbi));

 mutex_unlock(&sbi->gc_mutex);

 put_gc_inode(&gc_list);

 if (sync && !ret)
  ret = sec_freed ? 0 : -EAGAIN;
 return ret;
}
