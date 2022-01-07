
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_dentry_ptr {int dummy; } ;


 scalar_t__ MAX_INLINE_DATA (struct inode*) ;
 int f2fs_do_make_empty_dir (struct inode*,struct inode*,struct f2fs_dentry_ptr*) ;
 int f2fs_i_size_write (struct inode*,scalar_t__) ;
 scalar_t__ i_size_read (struct inode*) ;
 void* inline_data_addr (struct inode*,struct page*) ;
 int make_dentry_ptr_inline (struct inode*,struct f2fs_dentry_ptr*,void*) ;
 int set_page_dirty (struct page*) ;

int f2fs_make_empty_inline_dir(struct inode *inode, struct inode *parent,
       struct page *ipage)
{
 struct f2fs_dentry_ptr d;
 void *inline_dentry;

 inline_dentry = inline_data_addr(inode, ipage);

 make_dentry_ptr_inline(inode, &d, inline_dentry);
 f2fs_do_make_empty_dir(inode, parent, &d);

 set_page_dirty(ipage);


 if (i_size_read(inode) < MAX_INLINE_DATA(inode))
  f2fs_i_size_write(inode, MAX_INLINE_DATA(inode));
 return 0;
}
