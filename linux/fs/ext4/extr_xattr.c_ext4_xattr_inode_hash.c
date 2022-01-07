
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ext4_sb_info {int s_csum_seed; } ;


 int ext4_chksum (struct ext4_sb_info*,int ,void const*,size_t) ;

__attribute__((used)) static u32
ext4_xattr_inode_hash(struct ext4_sb_info *sbi, const void *buffer, size_t size)
{
 return ext4_chksum(sbi, sbi->s_csum_seed, buffer, size);
}
