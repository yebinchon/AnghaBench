
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct node_info {int blk_addr; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int dummy; } ;
typedef int nid_t ;
struct TYPE_2__ {int i_xattr_nid; } ;


 int ENOSPC ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int F2FS_NODE (struct page*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int NULL_ADDR ;
 int PTR_ERR (struct page*) ;
 int VALID_XATTR_BLOCK_SIZE ;
 int XATTR_NODE_OFFSET ;
 int dec_valid_node_count (struct f2fs_sb_info*,struct inode*,int) ;
 int f2fs_alloc_nid (struct f2fs_sb_info*,int *) ;
 int f2fs_alloc_nid_done (struct f2fs_sb_info*,int ) ;
 int f2fs_alloc_nid_failed (struct f2fs_sb_info*,int ) ;
 int f2fs_get_node_info (struct f2fs_sb_info*,int ,struct node_info*) ;
 int f2fs_invalidate_blocks (struct f2fs_sb_info*,int ) ;
 struct page* f2fs_new_node_page (struct dnode_of_data*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_update_inode_page (struct inode*) ;
 int memcpy (int ,int ,int ) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 int set_node_addr (struct f2fs_sb_info*,struct node_info*,int ,int) ;
 int set_page_dirty (struct page*) ;

int f2fs_recover_xattr_data(struct inode *inode, struct page *page)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 nid_t prev_xnid = F2FS_I(inode)->i_xattr_nid;
 nid_t new_xnid;
 struct dnode_of_data dn;
 struct node_info ni;
 struct page *xpage;
 int err;

 if (!prev_xnid)
  goto recover_xnid;


 err = f2fs_get_node_info(sbi, prev_xnid, &ni);
 if (err)
  return err;

 f2fs_invalidate_blocks(sbi, ni.blk_addr);
 dec_valid_node_count(sbi, inode, 0);
 set_node_addr(sbi, &ni, NULL_ADDR, 0);

recover_xnid:

 if (!f2fs_alloc_nid(sbi, &new_xnid))
  return -ENOSPC;

 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), new_xnid);
 xpage = f2fs_new_node_page(&dn, XATTR_NODE_OFFSET);
 if (IS_ERR(xpage)) {
  f2fs_alloc_nid_failed(sbi, new_xnid);
  return PTR_ERR(xpage);
 }

 f2fs_alloc_nid_done(sbi, new_xnid);
 f2fs_update_inode_page(inode);


 memcpy(F2FS_NODE(xpage), F2FS_NODE(page), VALID_XATTR_BLOCK_SIZE);

 set_page_dirty(xpage);
 f2fs_put_page(xpage, 1);

 return 0;
}
