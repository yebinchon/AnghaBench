
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_buddy {int dummy; } ;
typedef int ext4_group_t ;


 int GFP_NOFS ;
 int ext4_mb_load_buddy_gfp (struct super_block*,int ,struct ext4_buddy*,int ) ;

__attribute__((used)) static int ext4_mb_load_buddy(struct super_block *sb, ext4_group_t group,
         struct ext4_buddy *e4b)
{
 return ext4_mb_load_buddy_gfp(sb, group, e4b, GFP_NOFS);
}
