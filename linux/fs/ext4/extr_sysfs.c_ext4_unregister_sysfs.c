
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_id; } ;
struct ext4_sb_info {int s_kobj; scalar_t__ s_proc; } ;


 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int ext4_proc_root ;
 int kobject_del (int *) ;
 int remove_proc_subtree (int ,int ) ;

void ext4_unregister_sysfs(struct super_block *sb)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);

 if (sbi->s_proc)
  remove_proc_subtree(sb->s_id, ext4_proc_root);
 kobject_del(&sbi->s_kobj);
}
