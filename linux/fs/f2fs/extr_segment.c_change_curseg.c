
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_summary_block {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int seglist_lock; } ;
struct curseg_info {unsigned int next_segno; int sum_blk; int alloc_type; int segno; } ;


 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 int DIRTY ;
 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 int GET_SUM_BLOCK (struct f2fs_sb_info*,int ) ;
 int IS_ERR (struct page*) ;
 int PRE ;
 int SSR ;
 int SUM_ENTRY_SIZE ;
 int __next_free_blkoff (struct f2fs_sb_info*,struct curseg_info*,int ) ;
 int __remove_dirty_segment (struct f2fs_sb_info*,unsigned int,int ) ;
 int __set_test_and_inuse (struct f2fs_sb_info*,unsigned int) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int ) ;
 struct page* f2fs_get_sum_page (struct f2fs_sb_info*,unsigned int) ;
 int f2fs_put_page (struct page*,int) ;
 int memcpy (int ,struct f2fs_summary_block*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ page_address (struct page*) ;
 int reset_curseg (struct f2fs_sb_info*,int,int) ;
 int write_sum_page (struct f2fs_sb_info*,int ,int ) ;

__attribute__((used)) static void change_curseg(struct f2fs_sb_info *sbi, int type)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
 struct curseg_info *curseg = CURSEG_I(sbi, type);
 unsigned int new_segno = curseg->next_segno;
 struct f2fs_summary_block *sum_node;
 struct page *sum_page;

 write_sum_page(sbi, curseg->sum_blk,
    GET_SUM_BLOCK(sbi, curseg->segno));
 __set_test_and_inuse(sbi, new_segno);

 mutex_lock(&dirty_i->seglist_lock);
 __remove_dirty_segment(sbi, new_segno, PRE);
 __remove_dirty_segment(sbi, new_segno, DIRTY);
 mutex_unlock(&dirty_i->seglist_lock);

 reset_curseg(sbi, type, 1);
 curseg->alloc_type = SSR;
 __next_free_blkoff(sbi, curseg, 0);

 sum_page = f2fs_get_sum_page(sbi, new_segno);
 f2fs_bug_on(sbi, IS_ERR(sum_page));
 sum_node = (struct f2fs_summary_block *)page_address(sum_page);
 memcpy(curseg->sum_blk, sum_node, SUM_ENTRY_SIZE);
 f2fs_put_page(sum_page, 1);
}
