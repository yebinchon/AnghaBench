
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int ext4_group_t ;
struct TYPE_4__ {unsigned long s_gdb_count; TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_first_meta_bg; } ;


 TYPE_2__* EXT4_SB (struct super_block*) ;
 int ext4_bg_has_super (struct super_block*,int ) ;
 scalar_t__ ext4_has_feature_meta_bg (struct super_block*) ;
 unsigned long le32_to_cpu (int ) ;

__attribute__((used)) static unsigned long ext4_bg_num_gdb_nometa(struct super_block *sb,
     ext4_group_t group)
{
 if (!ext4_bg_has_super(sb, group))
  return 0;

 if (ext4_has_feature_meta_bg(sb))
  return le32_to_cpu(EXT4_SB(sb)->s_es->s_first_meta_bg);
 else
  return EXT4_SB(sb)->s_gdb_count;
}
