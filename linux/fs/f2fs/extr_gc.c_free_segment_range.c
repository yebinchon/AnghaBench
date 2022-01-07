
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_inode_list {int iroot; int ilist; } ;
struct f2fs_sb_info {int sb; int gc_mutex; scalar_t__ segs_per_sec; } ;


 int CURSEG_HOT_DATA ;
 int EAGAIN ;
 int FG_GC ;
 int FREE_I (struct f2fs_sb_info*) ;
 int GFP_NOFS ;
 int LIST_HEAD_INIT (int ) ;
 int NR_CURSEG_TYPE ;
 int RADIX_TREE_INIT (int ,int ) ;
 int allocate_segment_for_resize (struct f2fs_sb_info*,int,unsigned int,unsigned int) ;
 int do_garbage_collect (struct f2fs_sb_info*,unsigned int,struct gc_inode_list*,int ) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_err (struct f2fs_sb_info*,char*,unsigned int) ;
 int f2fs_sync_fs (int ,int) ;
 unsigned int find_next_inuse (int ,unsigned int,unsigned int) ;
 scalar_t__ get_valid_blocks (struct f2fs_sb_info*,unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_gc_inode (struct gc_inode_list*) ;

__attribute__((used)) static int free_segment_range(struct f2fs_sb_info *sbi, unsigned int start,
       unsigned int end)
{
 int type;
 unsigned int segno, next_inuse;
 int err = 0;


 for (type = CURSEG_HOT_DATA; type < NR_CURSEG_TYPE; type++)
  allocate_segment_for_resize(sbi, type, start, end);


 for (segno = start; segno <= end; segno += sbi->segs_per_sec) {
  struct gc_inode_list gc_list = {
   .ilist = LIST_HEAD_INIT(gc_list.ilist),
   .iroot = RADIX_TREE_INIT(gc_list.iroot, GFP_NOFS),
  };

  mutex_lock(&sbi->gc_mutex);
  do_garbage_collect(sbi, segno, &gc_list, FG_GC);
  mutex_unlock(&sbi->gc_mutex);
  put_gc_inode(&gc_list);

  if (get_valid_blocks(sbi, segno, 1))
   return -EAGAIN;
 }

 err = f2fs_sync_fs(sbi->sb, 1);
 if (err)
  return err;

 next_inuse = find_next_inuse(FREE_I(sbi), end + 1, start);
 if (next_inuse <= end) {
  f2fs_err(sbi, "segno %u should be free but still inuse!",
    next_inuse);
  f2fs_bug_on(sbi, 1);
 }
 return err;
}
