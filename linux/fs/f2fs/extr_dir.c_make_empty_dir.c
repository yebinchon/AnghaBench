
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_dentry_ptr {int dummy; } ;
struct f2fs_dentry_block {int dummy; } ;


 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 int f2fs_do_make_empty_dir (struct inode*,struct inode*,struct f2fs_dentry_ptr*) ;
 struct page* f2fs_get_new_data_page (struct inode*,struct page*,int ,int) ;
 scalar_t__ f2fs_has_inline_dentry (struct inode*) ;
 int f2fs_make_empty_inline_dir (struct inode*,struct inode*,struct page*) ;
 int f2fs_put_page (struct page*,int) ;
 int make_dentry_ptr_block (int *,struct f2fs_dentry_ptr*,struct f2fs_dentry_block*) ;
 struct f2fs_dentry_block* page_address (struct page*) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static int make_empty_dir(struct inode *inode,
  struct inode *parent, struct page *page)
{
 struct page *dentry_page;
 struct f2fs_dentry_block *dentry_blk;
 struct f2fs_dentry_ptr d;

 if (f2fs_has_inline_dentry(inode))
  return f2fs_make_empty_inline_dir(inode, parent, page);

 dentry_page = f2fs_get_new_data_page(inode, page, 0, 1);
 if (IS_ERR(dentry_page))
  return PTR_ERR(dentry_page);

 dentry_blk = page_address(dentry_page);

 make_dentry_ptr_block(((void*)0), &d, dentry_blk);
 f2fs_do_make_empty_dir(inode, parent, &d);

 set_page_dirty(dentry_page);
 f2fs_put_page(dentry_page, 1);
 return 0;
}
