
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {struct f2fs_bio_info** write_io; } ;
struct f2fs_bio_info {int io_rwsem; int bio; } ;
typedef int nid_t ;
typedef enum temp_type { ____Placeholder_temp_type } temp_type ;
typedef enum page_type { ____Placeholder_page_type } page_type ;


 int HOT ;
 int META ;
 int NR_TEMP_TYPE ;
 int PAGE_TYPE_OF_BIO (int) ;
 int __f2fs_submit_merged_write (struct f2fs_sb_info*,int,int) ;
 int __has_merged_page (int ,struct inode*,struct page*,int ) ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static void __submit_merged_write_cond(struct f2fs_sb_info *sbi,
    struct inode *inode, struct page *page,
    nid_t ino, enum page_type type, bool force)
{
 enum temp_type temp;
 bool ret = 1;

 for (temp = HOT; temp < NR_TEMP_TYPE; temp++) {
  if (!force) {
   enum page_type btype = PAGE_TYPE_OF_BIO(type);
   struct f2fs_bio_info *io = sbi->write_io[btype] + temp;

   down_read(&io->io_rwsem);
   ret = __has_merged_page(io->bio, inode, page, ino);
   up_read(&io->io_rwsem);
  }
  if (ret)
   __f2fs_submit_merged_write(sbi, type, temp);


  if (type >= META)
   break;
 }
}
