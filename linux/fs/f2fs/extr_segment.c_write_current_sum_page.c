
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_summary_block {int footer; int * entries; int journal; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {int curseg_mutex; int journal_rwsem; int * journal; struct f2fs_summary_block* sum_blk; } ;
typedef int block_t ;


 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 int PAGE_SIZE ;
 int SUM_ENTRY_SIZE ;
 int SUM_FOOTER_SIZE ;
 int SUM_JOURNAL_SIZE ;
 int down_read (int *) ;
 struct page* f2fs_grab_meta_page (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int memcpy (int *,int *,int ) ;
 int memset (struct f2fs_summary_block*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ page_address (struct page*) ;
 int set_page_dirty (struct page*) ;
 int up_read (int *) ;

__attribute__((used)) static void write_current_sum_page(struct f2fs_sb_info *sbi,
      int type, block_t blk_addr)
{
 struct curseg_info *curseg = CURSEG_I(sbi, type);
 struct page *page = f2fs_grab_meta_page(sbi, blk_addr);
 struct f2fs_summary_block *src = curseg->sum_blk;
 struct f2fs_summary_block *dst;

 dst = (struct f2fs_summary_block *)page_address(page);
 memset(dst, 0, PAGE_SIZE);

 mutex_lock(&curseg->curseg_mutex);

 down_read(&curseg->journal_rwsem);
 memcpy(&dst->journal, curseg->journal, SUM_JOURNAL_SIZE);
 up_read(&curseg->journal_rwsem);

 memcpy(dst->entries, src->entries, SUM_ENTRY_SIZE);
 memcpy(&dst->footer, &src->footer, SUM_FOOTER_SIZE);

 mutex_unlock(&curseg->curseg_mutex);

 set_page_dirty(page);
 f2fs_put_page(page, 1);
}
