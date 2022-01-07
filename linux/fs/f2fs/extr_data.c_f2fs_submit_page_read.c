
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct bio {int dummy; } ;
typedef int block_t ;


 int ClearPageError (struct page*) ;
 int DATA ;
 int EFAULT ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int F2FS_RD_DATA ;
 scalar_t__ IS_ERR (struct bio*) ;
 scalar_t__ PAGE_SIZE ;
 int PTR_ERR (struct bio*) ;
 int __submit_bio (struct f2fs_sb_info*,struct bio*,int ) ;
 scalar_t__ bio_add_page (struct bio*,struct page*,scalar_t__,int ) ;
 int bio_put (struct bio*) ;
 struct bio* f2fs_grab_read_bio (struct inode*,int ,int,int ,int ) ;
 int f2fs_wait_on_block_writeback (struct inode*,int ) ;
 int inc_page_count (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static int f2fs_submit_page_read(struct inode *inode, struct page *page,
       block_t blkaddr)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct bio *bio;

 bio = f2fs_grab_read_bio(inode, blkaddr, 1, 0, page->index);
 if (IS_ERR(bio))
  return PTR_ERR(bio);


 f2fs_wait_on_block_writeback(inode, blkaddr);

 if (bio_add_page(bio, page, PAGE_SIZE, 0) < PAGE_SIZE) {
  bio_put(bio);
  return -EFAULT;
 }
 ClearPageError(page);
 inc_page_count(sbi, F2FS_RD_DATA);
 __submit_bio(sbi, bio, DATA);
 return 0;
}
