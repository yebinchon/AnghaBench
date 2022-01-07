
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_super_block {scalar_t__ s_checksum; } ;


 int ext4_has_metadata_csum (struct super_block*) ;
 scalar_t__ ext4_superblock_csum (struct super_block*,struct ext4_super_block*) ;

__attribute__((used)) static int ext4_superblock_csum_verify(struct super_block *sb,
           struct ext4_super_block *es)
{
 if (!ext4_has_metadata_csum(sb))
  return 1;

 return es->s_checksum == ext4_superblock_csum(sb, es);
}
