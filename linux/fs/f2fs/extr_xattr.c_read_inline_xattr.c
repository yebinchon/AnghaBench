
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct f2fs_sb_info {int dummy; } ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 void* inline_xattr_addr (struct inode*,struct page*) ;
 unsigned int inline_xattr_size (struct inode*) ;
 int memcpy (void*,void*,unsigned int) ;

__attribute__((used)) static int read_inline_xattr(struct inode *inode, struct page *ipage,
       void *txattr_addr)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 unsigned int inline_size = inline_xattr_size(inode);
 struct page *page = ((void*)0);
 void *inline_addr;

 if (ipage) {
  inline_addr = inline_xattr_addr(inode, ipage);
 } else {
  page = f2fs_get_node_page(sbi, inode->i_ino);
  if (IS_ERR(page))
   return PTR_ERR(page);

  inline_addr = inline_xattr_addr(inode, page);
 }
 memcpy(txattr_addr, inline_addr, inline_size);
 f2fs_put_page(page, 1);

 return 0;
}
