
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct page {int dummy; } ;
struct node_info {scalar_t__ blk_addr; scalar_t__ version; scalar_t__ flag; int ino; int nid; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int node_changed; int nid; TYPE_1__* inode; } ;
struct TYPE_6__ {int i_mode; int i_ino; } ;


 int ENOMEM ;
 int EPERM ;
 struct page* ERR_PTR (int) ;
 struct f2fs_sb_info* F2FS_I_SB (TYPE_1__*) ;
 int FI_NO_ALLOC ;
 int NEW_ADDR ;
 int NODE ;
 int NODE_MAPPING (struct f2fs_sb_info*) ;
 scalar_t__ NULL_ADDR ;
 int PageUptodate (struct page*) ;
 int S_ISDIR (int ) ;
 int SetPageUptodate (struct page*) ;
 int clear_node_page_dirty (struct page*) ;
 int dec_valid_node_count (struct f2fs_sb_info*,TYPE_1__*,int) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_get_node_info (struct f2fs_sb_info*,int ,struct node_info*) ;
 struct page* f2fs_grab_cache_page (int ,int ,int) ;
 scalar_t__ f2fs_has_xattr_block (unsigned int) ;
 int f2fs_i_xnid_write (TYPE_1__*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int fill_node_footer (struct page*,int ,int ,unsigned int,int) ;
 int inc_valid_inode_count (struct f2fs_sb_info*) ;
 int inc_valid_node_count (struct f2fs_sb_info*,TYPE_1__*,int) ;
 int is_inode_flag_set (TYPE_1__*,int ) ;
 int set_cold_node (struct page*,int ) ;
 int set_node_addr (struct f2fs_sb_info*,struct node_info*,int ,int) ;
 scalar_t__ set_page_dirty (struct page*) ;
 scalar_t__ unlikely (int) ;

struct page *f2fs_new_node_page(struct dnode_of_data *dn, unsigned int ofs)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dn->inode);
 struct node_info new_ni;
 struct page *page;
 int err;

 if (unlikely(is_inode_flag_set(dn->inode, FI_NO_ALLOC)))
  return ERR_PTR(-EPERM);

 page = f2fs_grab_cache_page(NODE_MAPPING(sbi), dn->nid, 0);
 if (!page)
  return ERR_PTR(-ENOMEM);

 if (unlikely((err = inc_valid_node_count(sbi, dn->inode, !ofs))))
  goto fail;
 new_ni.nid = dn->nid;
 new_ni.ino = dn->inode->i_ino;
 new_ni.blk_addr = NULL_ADDR;
 new_ni.flag = 0;
 new_ni.version = 0;
 set_node_addr(sbi, &new_ni, NEW_ADDR, 0);

 f2fs_wait_on_page_writeback(page, NODE, 1, 1);
 fill_node_footer(page, dn->nid, dn->inode->i_ino, ofs, 1);
 set_cold_node(page, S_ISDIR(dn->inode->i_mode));
 if (!PageUptodate(page))
  SetPageUptodate(page);
 if (set_page_dirty(page))
  dn->node_changed = 1;

 if (f2fs_has_xattr_block(ofs))
  f2fs_i_xnid_write(dn->inode, dn->nid);

 if (ofs == 0)
  inc_valid_inode_count(sbi);
 return page;

fail:
 clear_node_page_dirty(page);
 f2fs_put_page(page, 1);
 return ERR_PTR(err);
}
