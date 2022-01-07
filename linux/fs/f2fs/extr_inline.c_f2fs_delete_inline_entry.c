
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_mtime; int i_ctime; } ;
struct f2fs_dir_entry {int name_len; } ;
struct f2fs_dentry_ptr {int bitmap; struct f2fs_dir_entry* dentry; } ;


 int GET_DENTRY_SLOTS (int ) ;
 int NODE ;
 int __clear_bit_le (unsigned int,int ) ;
 int current_time (struct inode*) ;
 int f2fs_drop_nlink (struct inode*,struct inode*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 void* inline_data_addr (struct inode*,struct page*) ;
 int le16_to_cpu (int ) ;
 int lock_page (struct page*) ;
 int make_dentry_ptr_inline (struct inode*,struct f2fs_dentry_ptr*,void*) ;
 int set_page_dirty (struct page*) ;

void f2fs_delete_inline_entry(struct f2fs_dir_entry *dentry, struct page *page,
     struct inode *dir, struct inode *inode)
{
 struct f2fs_dentry_ptr d;
 void *inline_dentry;
 int slots = GET_DENTRY_SLOTS(le16_to_cpu(dentry->name_len));
 unsigned int bit_pos;
 int i;

 lock_page(page);
 f2fs_wait_on_page_writeback(page, NODE, 1, 1);

 inline_dentry = inline_data_addr(dir, page);
 make_dentry_ptr_inline(dir, &d, inline_dentry);

 bit_pos = dentry - d.dentry;
 for (i = 0; i < slots; i++)
  __clear_bit_le(bit_pos + i, d.bitmap);

 set_page_dirty(page);
 f2fs_put_page(page, 1);

 dir->i_ctime = dir->i_mtime = current_time(dir);
 f2fs_mark_inode_dirty_sync(dir, 0);

 if (inode)
  f2fs_drop_nlink(dir, inode);
}
