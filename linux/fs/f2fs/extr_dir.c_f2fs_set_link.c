
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_ctime; int i_mtime; int i_mode; int i_ino; } ;
struct f2fs_dir_entry {int ino; } ;
typedef enum page_type { ____Placeholder_page_type } page_type ;


 int DATA ;
 int NODE ;
 int cpu_to_le32 (int ) ;
 int current_time (struct inode*) ;
 scalar_t__ f2fs_has_inline_dentry (struct inode*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_wait_on_page_writeback (struct page*,int,int,int) ;
 int lock_page (struct page*) ;
 int set_de_type (struct f2fs_dir_entry*,int ) ;
 int set_page_dirty (struct page*) ;

void f2fs_set_link(struct inode *dir, struct f2fs_dir_entry *de,
  struct page *page, struct inode *inode)
{
 enum page_type type = f2fs_has_inline_dentry(dir) ? NODE : DATA;
 lock_page(page);
 f2fs_wait_on_page_writeback(page, type, 1, 1);
 de->ino = cpu_to_le32(inode->i_ino);
 set_de_type(de, inode->i_mode);
 set_page_dirty(page);

 dir->i_mtime = dir->i_ctime = current_time(dir);
 f2fs_mark_inode_dirty_sync(dir, 0);
 f2fs_put_page(page, 1);
}
