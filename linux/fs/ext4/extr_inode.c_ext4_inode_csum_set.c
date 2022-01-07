
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_inode_info {int dummy; } ;
struct ext4_inode {void* i_checksum_hi; void* i_checksum_lo; } ;
typedef int __u32 ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {scalar_t__ s_creator_os; } ;


 scalar_t__ EXT4_FITS_IN_INODE (struct ext4_inode*,struct ext4_inode_info*,int ) ;
 scalar_t__ EXT4_GOOD_OLD_INODE_SIZE ;
 scalar_t__ EXT4_INODE_SIZE (int ) ;
 int EXT4_OS_LINUX ;
 TYPE_2__* EXT4_SB (int ) ;
 void* cpu_to_le16 (int) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int ext4_has_metadata_csum (int ) ;
 int ext4_inode_csum (struct inode*,struct ext4_inode*,struct ext4_inode_info*) ;
 int i_checksum_hi ;

__attribute__((used)) static void ext4_inode_csum_set(struct inode *inode, struct ext4_inode *raw,
    struct ext4_inode_info *ei)
{
 __u32 csum;

 if (EXT4_SB(inode->i_sb)->s_es->s_creator_os !=
     cpu_to_le32(EXT4_OS_LINUX) ||
     !ext4_has_metadata_csum(inode->i_sb))
  return;

 csum = ext4_inode_csum(inode, raw, ei);
 raw->i_checksum_lo = cpu_to_le16(csum & 0xFFFF);
 if (EXT4_INODE_SIZE(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE &&
     EXT4_FITS_IN_INODE(raw, ei, i_checksum_hi))
  raw->i_checksum_hi = cpu_to_le16(csum >> 16);
}
