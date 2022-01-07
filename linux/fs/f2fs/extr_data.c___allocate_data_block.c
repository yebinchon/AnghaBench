
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_info {int version; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int data_blkaddr; int ofs_in_node; int nid; int inode; int node_page; } ;
typedef int block_t ;
typedef int blkcnt_t ;


 int EPERM ;
 struct f2fs_sb_info* F2FS_I_SB (int ) ;
 int FI_NO_ALLOC ;
 scalar_t__ GET_SEGNO (struct f2fs_sb_info*,int ) ;
 int META_MAPPING (struct f2fs_sb_info*) ;
 int NULL_ADDR ;
 scalar_t__ NULL_SEGNO ;
 int datablock_addr (int ,int ,int ) ;
 int f2fs_allocate_data_block (struct f2fs_sb_info*,int *,int ,int *,struct f2fs_summary*,int,int *,int) ;
 int f2fs_get_node_info (struct f2fs_sb_info*,int ,struct node_info*) ;
 int f2fs_update_data_blkaddr (struct dnode_of_data*,int ) ;
 int inc_valid_block_count (struct f2fs_sb_info*,int ,int*) ;
 int invalidate_mapping_pages (int ,int ,int ) ;
 int is_inode_flag_set (int ,int ) ;
 int set_summary (struct f2fs_summary*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __allocate_data_block(struct dnode_of_data *dn, int seg_type)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dn->inode);
 struct f2fs_summary sum;
 struct node_info ni;
 block_t old_blkaddr;
 blkcnt_t count = 1;
 int err;

 if (unlikely(is_inode_flag_set(dn->inode, FI_NO_ALLOC)))
  return -EPERM;

 err = f2fs_get_node_info(sbi, dn->nid, &ni);
 if (err)
  return err;

 dn->data_blkaddr = datablock_addr(dn->inode,
    dn->node_page, dn->ofs_in_node);
 if (dn->data_blkaddr != NULL_ADDR)
  goto alloc;

 if (unlikely((err = inc_valid_block_count(sbi, dn->inode, &count))))
  return err;

alloc:
 set_summary(&sum, dn->nid, dn->ofs_in_node, ni.version);
 old_blkaddr = dn->data_blkaddr;
 f2fs_allocate_data_block(sbi, ((void*)0), old_blkaddr, &dn->data_blkaddr,
     &sum, seg_type, ((void*)0), 0);
 if (GET_SEGNO(sbi, old_blkaddr) != NULL_SEGNO)
  invalidate_mapping_pages(META_MAPPING(sbi),
     old_blkaddr, old_blkaddr);
 f2fs_update_data_blkaddr(dn, dn->data_blkaddr);





 return 0;
}
