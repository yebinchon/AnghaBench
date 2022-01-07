
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int ext4_group_t ;


 int EXT4_DESC_PER_BLOCK (struct super_block*) ;

__attribute__((used)) static int num_desc_blocks(struct super_block *sb, ext4_group_t groups)
{
 return (groups + EXT4_DESC_PER_BLOCK(sb) - 1) / EXT4_DESC_PER_BLOCK(sb);
}
