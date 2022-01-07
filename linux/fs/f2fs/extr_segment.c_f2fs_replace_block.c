
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int ofs_in_node; int nid; } ;
typedef int block_t ;


 int f2fs_do_replace_block (struct f2fs_sb_info*,struct f2fs_summary*,int ,int ,int,int) ;
 int f2fs_update_data_blkaddr (struct dnode_of_data*,int ) ;
 int set_summary (struct f2fs_summary*,int ,int ,unsigned char) ;

void f2fs_replace_block(struct f2fs_sb_info *sbi, struct dnode_of_data *dn,
    block_t old_addr, block_t new_addr,
    unsigned char version, bool recover_curseg,
    bool recover_newaddr)
{
 struct f2fs_summary sum;

 set_summary(&sum, dn->nid, dn->ofs_in_node, version);

 f2fs_do_replace_block(sbi, &sum, old_addr, new_addr,
     recover_curseg, recover_newaddr);

 f2fs_update_data_blkaddr(dn, new_addr);
}
