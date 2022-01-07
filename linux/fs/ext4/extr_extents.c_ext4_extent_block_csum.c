
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_inode_info {int i_csum_seed; } ;
struct ext4_extent_header {int dummy; } ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __le32 ;


 int EXT4_EXTENT_TAIL_OFFSET (struct ext4_extent_header*) ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int cpu_to_le32 (int ) ;
 int ext4_chksum (struct ext4_sb_info*,int ,int *,int ) ;

__attribute__((used)) static __le32 ext4_extent_block_csum(struct inode *inode,
         struct ext4_extent_header *eh)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 __u32 csum;

 csum = ext4_chksum(sbi, ei->i_csum_seed, (__u8 *)eh,
      EXT4_EXTENT_TAIL_OFFSET(eh));
 return cpu_to_le32(csum);
}
