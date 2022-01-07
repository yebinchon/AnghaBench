
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;
struct inode {int i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {scalar_t__* i_nid; } ;
struct dnode_of_data {int nid; } ;
typedef int pgoff_t ;


 int BUG () ;
 int BUG_ON (int) ;
 int ENOENT ;
 struct f2fs_inode* F2FS_INODE (struct page*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int NIDS_PER_BLOCK ;
 int NODE ;





 scalar_t__ NODE_MAPPING (struct f2fs_sb_info*) ;
 int PTR_ERR (struct page*) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int get_node_path (struct inode*,int ,int*,int*) ;
 int le32_to_cpu (scalar_t__) ;
 int lock_page (struct page*) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,struct page*,int *,int ) ;
 int set_page_dirty (struct page*) ;
 int trace_f2fs_truncate_inode_blocks_enter (struct inode*,int ) ;
 int trace_f2fs_truncate_inode_blocks_exit (struct inode*,int) ;
 int truncate_dnode (struct dnode_of_data*) ;
 int truncate_nodes (struct dnode_of_data*,unsigned int,int,int) ;
 int truncate_partial_nodes (struct dnode_of_data*,struct f2fs_inode*,int*,int) ;
 int unlock_page (struct page*) ;

int f2fs_truncate_inode_blocks(struct inode *inode, pgoff_t from)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 int err = 0, cont = 1;
 int level, offset[4], noffset[4];
 unsigned int nofs = 0;
 struct f2fs_inode *ri;
 struct dnode_of_data dn;
 struct page *page;

 trace_f2fs_truncate_inode_blocks_enter(inode, from);

 level = get_node_path(inode, from, offset, noffset);
 if (level < 0)
  return level;

 page = f2fs_get_node_page(sbi, inode->i_ino);
 if (IS_ERR(page)) {
  trace_f2fs_truncate_inode_blocks_exit(inode, PTR_ERR(page));
  return PTR_ERR(page);
 }

 set_new_dnode(&dn, inode, page, ((void*)0), 0);
 unlock_page(page);

 ri = F2FS_INODE(page);
 switch (level) {
 case 0:
 case 1:
  nofs = noffset[1];
  break;
 case 2:
  nofs = noffset[1];
  if (!offset[level - 1])
   goto skip_partial;
  err = truncate_partial_nodes(&dn, ri, offset, level);
  if (err < 0 && err != -ENOENT)
   goto fail;
  nofs += 1 + NIDS_PER_BLOCK;
  break;
 case 3:
  nofs = 5 + 2 * NIDS_PER_BLOCK;
  if (!offset[level - 1])
   goto skip_partial;
  err = truncate_partial_nodes(&dn, ri, offset, level);
  if (err < 0 && err != -ENOENT)
   goto fail;
  break;
 default:
  BUG();
 }

skip_partial:
 while (cont) {
  dn.nid = le32_to_cpu(ri->i_nid[offset[0] - 131]);
  switch (offset[0]) {
  case 131:
  case 130:
   err = truncate_dnode(&dn);
   break;

  case 129:
  case 128:
   err = truncate_nodes(&dn, nofs, offset[1], 2);
   break;

  case 132:
   err = truncate_nodes(&dn, nofs, offset[1], 3);
   cont = 0;
   break;

  default:
   BUG();
  }
  if (err < 0 && err != -ENOENT)
   goto fail;
  if (offset[1] == 0 &&
    ri->i_nid[offset[0] - 131]) {
   lock_page(page);
   BUG_ON(page->mapping != NODE_MAPPING(sbi));
   f2fs_wait_on_page_writeback(page, NODE, 1, 1);
   ri->i_nid[offset[0] - 131] = 0;
   set_page_dirty(page);
   unlock_page(page);
  }
  offset[1] = 0;
  offset[0]++;
  nofs += err;
 }
fail:
 f2fs_put_page(page, 0);
 trace_f2fs_truncate_inode_blocks_exit(inode, err);
 return err > 0 ? 0 : err;
}
