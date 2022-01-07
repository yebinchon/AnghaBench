
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_checkpoint {int checksum_offset; } ;
typedef int chksum ;
typedef int __u8 ;
typedef int __u32 ;


 unsigned int CP_CHKSUM_OFFSET ;
 scalar_t__ F2FS_BLKSIZE ;
 int f2fs_chksum (struct f2fs_sb_info*,int ,int *,scalar_t__) ;
 int f2fs_crc32 (struct f2fs_sb_info*,struct f2fs_checkpoint*,unsigned int) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static __u32 f2fs_checkpoint_chksum(struct f2fs_sb_info *sbi,
      struct f2fs_checkpoint *ckpt)
{
 unsigned int chksum_ofs = le32_to_cpu(ckpt->checksum_offset);
 __u32 chksum;

 chksum = f2fs_crc32(sbi, ckpt, chksum_ofs);
 if (chksum_ofs < CP_CHKSUM_OFFSET) {
  chksum_ofs += sizeof(chksum);
  chksum = f2fs_chksum(sbi, chksum, (__u8 *)ckpt + chksum_ofs,
      F2FS_BLKSIZE - chksum_ofs);
 }
 return chksum;
}
