
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct f2fs_sb_info {int sb; int write_io_dummy; } ;
struct TYPE_3__ {unsigned int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef enum page_type { ____Placeholder_page_type } page_type ;
struct TYPE_4__ {scalar_t__ plug; } ;


 int DATA ;
 scalar_t__ DUMMY_WRITTEN_PAGE ;
 unsigned int F2FS_BLKSIZE_BITS ;
 scalar_t__ F2FS_IO_ALIGNED (struct f2fs_sb_info*) ;
 unsigned int F2FS_IO_SIZE (struct f2fs_sb_info*) ;
 int GFP_NOIO ;
 int LFS ;
 int NODE ;
 scalar_t__ PAGE_SIZE ;
 int SBI_NEED_CP ;
 int SetPagePrivate (struct page*) ;
 int __GFP_NOFAIL ;
 scalar_t__ bio_add_page (struct bio*,struct page*,scalar_t__,int ) ;
 int bio_op (struct bio*) ;
 int blk_finish_plug (scalar_t__) ;
 TYPE_2__* current ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 scalar_t__ is_read_io (int ) ;
 int lock_page (struct page*) ;
 struct page* mempool_alloc (int ,int) ;
 int set_page_private (struct page*,unsigned long) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int submit_bio (struct bio*) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;
 int trace_f2fs_submit_read_bio (int ,int,struct bio*) ;
 int trace_f2fs_submit_write_bio (int ,int,struct bio*) ;
 int zero_user_segment (struct page*,int ,scalar_t__) ;

__attribute__((used)) static inline void __submit_bio(struct f2fs_sb_info *sbi,
    struct bio *bio, enum page_type type)
{
 if (!is_read_io(bio_op(bio))) {
  unsigned int start;

  if (type != DATA && type != NODE)
   goto submit_io;

  if (test_opt(sbi, LFS) && current->plug)
   blk_finish_plug(current->plug);

  if (F2FS_IO_ALIGNED(sbi))
   goto submit_io;

  start = bio->bi_iter.bi_size >> F2FS_BLKSIZE_BITS;
  start %= F2FS_IO_SIZE(sbi);

  if (start == 0)
   goto submit_io;


  for (; start < F2FS_IO_SIZE(sbi); start++) {
   struct page *page =
    mempool_alloc(sbi->write_io_dummy,
           GFP_NOIO | __GFP_NOFAIL);
   f2fs_bug_on(sbi, !page);

   zero_user_segment(page, 0, PAGE_SIZE);
   SetPagePrivate(page);
   set_page_private(page, (unsigned long)DUMMY_WRITTEN_PAGE);
   lock_page(page);
   if (bio_add_page(bio, page, PAGE_SIZE, 0) < PAGE_SIZE)
    f2fs_bug_on(sbi, 1);
  }




  if (type == NODE)
   set_sbi_flag(sbi, SBI_NEED_CP);
 }
submit_io:
 if (is_read_io(bio_op(bio)))
  trace_f2fs_submit_read_bio(sbi->sb, type, bio);
 else
  trace_f2fs_submit_write_bio(sbi->sb, type, bio);
 submit_bio(bio);
}
