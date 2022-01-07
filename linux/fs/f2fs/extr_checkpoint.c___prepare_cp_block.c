
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int next_scan_nid; } ;
struct f2fs_checkpoint {void* next_free_nid; void* valid_inode_count; void* valid_node_count; int valid_block_count; } ;
typedef int nid_t ;


 struct f2fs_checkpoint* F2FS_CKPT (struct f2fs_sb_info*) ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int next_free_nid (struct f2fs_sb_info*,int *) ;
 int valid_inode_count (struct f2fs_sb_info*) ;
 int valid_node_count (struct f2fs_sb_info*) ;
 int valid_user_blocks (struct f2fs_sb_info*) ;

__attribute__((used)) static void __prepare_cp_block(struct f2fs_sb_info *sbi)
{
 struct f2fs_checkpoint *ckpt = F2FS_CKPT(sbi);
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 nid_t last_nid = nm_i->next_scan_nid;

 next_free_nid(sbi, &last_nid);
 ckpt->valid_block_count = cpu_to_le64(valid_user_blocks(sbi));
 ckpt->valid_node_count = cpu_to_le32(valid_node_count(sbi));
 ckpt->valid_inode_count = cpu_to_le32(valid_inode_count(sbi));
 ckpt->next_free_nid = cpu_to_le32(last_nid);
}
