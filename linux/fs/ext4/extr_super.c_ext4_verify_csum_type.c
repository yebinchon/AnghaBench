
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_super_block {scalar_t__ s_checksum_type; } ;


 scalar_t__ EXT4_CRC32C_CHKSUM ;
 int ext4_has_feature_metadata_csum (struct super_block*) ;

__attribute__((used)) static int ext4_verify_csum_type(struct super_block *sb,
     struct ext4_super_block *es)
{
 if (!ext4_has_feature_metadata_csum(sb))
  return 1;

 return es->s_checksum_type == EXT4_CRC32C_CHKSUM;
}
