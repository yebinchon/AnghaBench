
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_dir_entry {int d_ino; int d_reclen; } ;
struct page {int dummy; } ;
struct inode {int i_ctime; int i_mtime; int i_mode; int i_sb; int i_ino; } ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int cpu_to_fs32 (int ,int ) ;
 int current_time (struct inode*) ;
 unsigned int fs16_to_cpu (int ,int ) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 scalar_t__ page_address (struct page*) ;
 int page_offset (struct page*) ;
 int ufs_commit_chunk (struct page*,int,unsigned int) ;
 int ufs_prepare_chunk (struct page*,int,unsigned int) ;
 int ufs_put_page (struct page*) ;
 int ufs_set_de_type (int ,struct ufs_dir_entry*,int ) ;

void ufs_set_link(struct inode *dir, struct ufs_dir_entry *de,
    struct page *page, struct inode *inode,
    bool update_times)
{
 loff_t pos = page_offset(page) +
   (char *) de - (char *) page_address(page);
 unsigned len = fs16_to_cpu(dir->i_sb, de->d_reclen);
 int err;

 lock_page(page);
 err = ufs_prepare_chunk(page, pos, len);
 BUG_ON(err);

 de->d_ino = cpu_to_fs32(dir->i_sb, inode->i_ino);
 ufs_set_de_type(dir->i_sb, de, inode->i_mode);

 err = ufs_commit_chunk(page, pos, len);
 ufs_put_page(page);
 if (update_times)
  dir->i_mtime = dir->i_ctime = current_time(dir);
 mark_inode_dirty(dir);
}
