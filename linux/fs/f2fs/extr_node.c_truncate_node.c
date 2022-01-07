
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct node_info {int blk_addr; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {scalar_t__ nid; TYPE_1__* inode; TYPE_2__* node_page; } ;
typedef int pgoff_t ;
struct TYPE_8__ {int index; } ;
struct TYPE_7__ {scalar_t__ i_ino; } ;


 struct f2fs_sb_info* F2FS_I_SB (TYPE_1__*) ;
 int NODE_MAPPING (struct f2fs_sb_info*) ;
 int NULL_ADDR ;
 int SBI_IS_DIRTY ;
 int clear_node_page_dirty (TYPE_2__*) ;
 int dec_valid_inode_count (struct f2fs_sb_info*) ;
 int dec_valid_node_count (struct f2fs_sb_info*,TYPE_1__*,int) ;
 int f2fs_get_node_info (struct f2fs_sb_info*,scalar_t__,struct node_info*) ;
 int f2fs_inode_synced (TYPE_1__*) ;
 int f2fs_invalidate_blocks (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (TYPE_2__*,int) ;
 int f2fs_remove_orphan_inode (struct f2fs_sb_info*,scalar_t__) ;
 int invalidate_mapping_pages (int ,int ,int ) ;
 int set_node_addr (struct f2fs_sb_info*,struct node_info*,int ,int) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int trace_f2fs_truncate_node (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static int truncate_node(struct dnode_of_data *dn)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dn->inode);
 struct node_info ni;
 int err;
 pgoff_t index;

 err = f2fs_get_node_info(sbi, dn->nid, &ni);
 if (err)
  return err;


 f2fs_invalidate_blocks(sbi, ni.blk_addr);
 dec_valid_node_count(sbi, dn->inode, dn->nid == dn->inode->i_ino);
 set_node_addr(sbi, &ni, NULL_ADDR, 0);

 if (dn->nid == dn->inode->i_ino) {
  f2fs_remove_orphan_inode(sbi, dn->nid);
  dec_valid_inode_count(sbi);
  f2fs_inode_synced(dn->inode);
 }

 clear_node_page_dirty(dn->node_page);
 set_sbi_flag(sbi, SBI_IS_DIRTY);

 index = dn->node_page->index;
 f2fs_put_page(dn->node_page, 1);

 invalidate_mapping_pages(NODE_MAPPING(sbi),
   index, index);

 dn->node_page = ((void*)0);
 trace_f2fs_truncate_node(dn->inode, dn->nid, ni.blk_addr);

 return 0;
}
