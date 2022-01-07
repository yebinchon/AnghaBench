
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int dummy; } ;
typedef int nid_t ;
typedef size_t __u32 ;
struct TYPE_2__ {scalar_t__ i_xattr_nid; } ;


 int ENOSPC ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int NODE ;
 int PTR_ERR (struct page*) ;
 size_t VALID_XATTR_BLOCK_SIZE ;
 int XATTR_NODE_OFFSET ;
 int f2fs_alloc_nid (struct f2fs_sb_info*,int *) ;
 int f2fs_alloc_nid_done (struct f2fs_sb_info*,int ) ;
 int f2fs_alloc_nid_failed (struct f2fs_sb_info*,int ) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int ) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,scalar_t__) ;
 struct page* f2fs_new_node_page (struct dnode_of_data*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_truncate_xattr_node (struct inode*) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 void* inline_xattr_addr (struct inode*,struct page*) ;
 size_t inline_xattr_size (struct inode*) ;
 int memcpy (void*,void*,size_t) ;
 void* page_address (struct page*) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static inline int write_all_xattrs(struct inode *inode, __u32 hsize,
    void *txattr_addr, struct page *ipage)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 size_t inline_size = inline_xattr_size(inode);
 struct page *in_page = ((void*)0);
 void *xattr_addr;
 void *inline_addr = ((void*)0);
 struct page *xpage;
 nid_t new_nid = 0;
 int err = 0;

 if (hsize > inline_size && !F2FS_I(inode)->i_xattr_nid)
  if (!f2fs_alloc_nid(sbi, &new_nid))
   return -ENOSPC;


 if (inline_size) {
  if (ipage) {
   inline_addr = inline_xattr_addr(inode, ipage);
  } else {
   in_page = f2fs_get_node_page(sbi, inode->i_ino);
   if (IS_ERR(in_page)) {
    f2fs_alloc_nid_failed(sbi, new_nid);
    return PTR_ERR(in_page);
   }
   inline_addr = inline_xattr_addr(inode, in_page);
  }

  f2fs_wait_on_page_writeback(ipage ? ipage : in_page,
       NODE, 1, 1);

  if (hsize <= inline_size) {
   err = f2fs_truncate_xattr_node(inode);
   f2fs_alloc_nid_failed(sbi, new_nid);
   if (err) {
    f2fs_put_page(in_page, 1);
    return err;
   }
   memcpy(inline_addr, txattr_addr, inline_size);
   set_page_dirty(ipage ? ipage : in_page);
   goto in_page_out;
  }
 }


 if (F2FS_I(inode)->i_xattr_nid) {
  xpage = f2fs_get_node_page(sbi, F2FS_I(inode)->i_xattr_nid);
  if (IS_ERR(xpage)) {
   err = PTR_ERR(xpage);
   f2fs_alloc_nid_failed(sbi, new_nid);
   goto in_page_out;
  }
  f2fs_bug_on(sbi, new_nid);
  f2fs_wait_on_page_writeback(xpage, NODE, 1, 1);
 } else {
  struct dnode_of_data dn;
  set_new_dnode(&dn, inode, ((void*)0), ((void*)0), new_nid);
  xpage = f2fs_new_node_page(&dn, XATTR_NODE_OFFSET);
  if (IS_ERR(xpage)) {
   err = PTR_ERR(xpage);
   f2fs_alloc_nid_failed(sbi, new_nid);
   goto in_page_out;
  }
  f2fs_alloc_nid_done(sbi, new_nid);
 }
 xattr_addr = page_address(xpage);

 if (inline_size)
  memcpy(inline_addr, txattr_addr, inline_size);
 memcpy(xattr_addr, txattr_addr + inline_size, VALID_XATTR_BLOCK_SIZE);

 if (inline_size)
  set_page_dirty(ipage ? ipage : in_page);
 set_page_dirty(xpage);

 f2fs_put_page(xpage, 1);
in_page_out:
 f2fs_put_page(in_page, 1);
 return err;
}
