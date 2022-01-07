
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_super_block {int s_checksum; } ;
struct TYPE_2__ {struct ext4_super_block* s_es; } ;


 TYPE_1__* EXT4_SB (struct super_block*) ;
 int ext4_has_metadata_csum (struct super_block*) ;
 int ext4_superblock_csum (struct super_block*,struct ext4_super_block*) ;

void ext4_superblock_csum_set(struct super_block *sb)
{
 struct ext4_super_block *es = EXT4_SB(sb)->s_es;

 if (!ext4_has_metadata_csum(sb))
  return;

 es->s_checksum = ext4_superblock_csum(sb, es);
}
