
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sit_info {int sentry_lock; TYPE_1__* s_ops; } ;
struct page {int dummy; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {struct f2fs_bio_info** write_io; } ;
struct f2fs_io_info {int retry; int in_list; size_t type; int temp; int list; } ;
struct f2fs_bio_info {int io_lock; int io_list; } ;
struct curseg_info {int curseg_mutex; } ;
typedef int block_t ;
struct TYPE_4__ {int curseg_lock; } ;
struct TYPE_3__ {int (* allocate_segment ) (struct f2fs_sb_info*,int,int) ;} ;


 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 scalar_t__ F2FS_IO_ALIGNED (struct f2fs_sb_info*) ;
 scalar_t__ GET_SEGNO (struct f2fs_sb_info*,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_NODESEG (int) ;
 int NEXT_FREE_BLKADDR (struct f2fs_sb_info*,struct curseg_info*) ;
 scalar_t__ NULL_SEGNO ;
 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 TYPE_2__* SM_I (struct f2fs_sb_info*) ;
 int __add_sum_entry (struct f2fs_sb_info*,int,struct f2fs_summary*) ;
 int __has_curseg_space (struct f2fs_sb_info*,int) ;
 int __refresh_next_blkoff (struct f2fs_sb_info*,struct curseg_info*) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int f2fs_inode_chksum_set (struct f2fs_sb_info*,struct page*) ;
 int f2fs_wait_discard_bio (struct f2fs_sb_info*,int ) ;
 int fill_node_footer_blkaddr (struct page*,int ) ;
 int list_add_tail (int *,int *) ;
 int locate_dirty_segment (struct f2fs_sb_info*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stat_inc_block_count (struct f2fs_sb_info*,struct curseg_info*) ;
 int stub1 (struct f2fs_sb_info*,int,int) ;
 int up_read (int *) ;
 int up_write (int *) ;
 int update_sit_entry (struct f2fs_sb_info*,int ,int) ;

void f2fs_allocate_data_block(struct f2fs_sb_info *sbi, struct page *page,
  block_t old_blkaddr, block_t *new_blkaddr,
  struct f2fs_summary *sum, int type,
  struct f2fs_io_info *fio, bool add_list)
{
 struct sit_info *sit_i = SIT_I(sbi);
 struct curseg_info *curseg = CURSEG_I(sbi, type);

 down_read(&SM_I(sbi)->curseg_lock);

 mutex_lock(&curseg->curseg_mutex);
 down_write(&sit_i->sentry_lock);

 *new_blkaddr = NEXT_FREE_BLKADDR(sbi, curseg);

 f2fs_wait_discard_bio(sbi, *new_blkaddr);






 __add_sum_entry(sbi, type, sum);

 __refresh_next_blkoff(sbi, curseg);

 stat_inc_block_count(sbi, curseg);





 update_sit_entry(sbi, *new_blkaddr, 1);
 if (GET_SEGNO(sbi, old_blkaddr) != NULL_SEGNO)
  update_sit_entry(sbi, old_blkaddr, -1);

 if (!__has_curseg_space(sbi, type))
  sit_i->s_ops->allocate_segment(sbi, type, 0);






 locate_dirty_segment(sbi, GET_SEGNO(sbi, old_blkaddr));
 locate_dirty_segment(sbi, GET_SEGNO(sbi, *new_blkaddr));

 up_write(&sit_i->sentry_lock);

 if (page && IS_NODESEG(type)) {
  fill_node_footer_blkaddr(page, NEXT_FREE_BLKADDR(sbi, curseg));

  f2fs_inode_chksum_set(sbi, page);
 }

 if (F2FS_IO_ALIGNED(sbi))
  fio->retry = 0;

 if (add_list) {
  struct f2fs_bio_info *io;

  INIT_LIST_HEAD(&fio->list);
  fio->in_list = 1;
  io = sbi->write_io[fio->type] + fio->temp;
  spin_lock(&io->io_lock);
  list_add_tail(&fio->list, &io->io_list);
  spin_unlock(&io->io_lock);
 }

 mutex_unlock(&curseg->curseg_mutex);

 up_read(&SM_I(sbi)->curseg_lock);
}
