
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_sb_info {int s_cluster_ratio; } ;
typedef int ext4_lblk_t ;


 int EXT4_B2C (struct ext4_sb_info*,int ) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int ext4_clu_mapped (struct inode*,int ) ;
 int ext4_da_reserve_space (struct inode*) ;
 int ext4_es_insert_delayed_block (struct inode*,int ,int) ;
 int ext4_es_is_delonly ;
 int ext4_es_is_mapped ;
 int ext4_es_scan_clu (struct inode*,int *,int ) ;

__attribute__((used)) static int ext4_insert_delayed_block(struct inode *inode, ext4_lblk_t lblk)
{
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 int ret;
 bool allocated = 0;
 if (sbi->s_cluster_ratio == 1) {
  ret = ext4_da_reserve_space(inode);
  if (ret != 0)
   goto errout;
 } else {
  if (!ext4_es_scan_clu(inode, &ext4_es_is_delonly, lblk)) {
   if (!ext4_es_scan_clu(inode,
           &ext4_es_is_mapped, lblk)) {
    ret = ext4_clu_mapped(inode,
            EXT4_B2C(sbi, lblk));
    if (ret < 0)
     goto errout;
    if (ret == 0) {
     ret = ext4_da_reserve_space(inode);
     if (ret != 0)
      goto errout;
    } else {
     allocated = 1;
    }
   } else {
    allocated = 1;
   }
  }
 }

 ret = ext4_es_insert_delayed_block(inode, lblk, allocated);

errout:
 return ret;
}
