
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_id; } ;
struct ext4_sb_info {scalar_t__ s_proc; int s_kobj_unregister; int s_kobj; } ;


 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int S_IRUGO ;
 int ext4_mb_seq_groups_ops ;
 scalar_t__ ext4_proc_root ;
 int ext4_root ;
 int ext4_sb_ktype ;
 int ext4_seq_es_shrinker_info_show ;
 int ext4_seq_options_show ;
 int init_completion (int *) ;
 int kobject_init_and_add (int *,int *,int ,char*,int ) ;
 int kobject_put (int *) ;
 int proc_create_seq_data (char*,int ,scalar_t__,int *,struct super_block*) ;
 int proc_create_single_data (char*,int ,scalar_t__,int ,struct super_block*) ;
 scalar_t__ proc_mkdir (int ,scalar_t__) ;
 int wait_for_completion (int *) ;

int ext4_register_sysfs(struct super_block *sb)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 int err;

 init_completion(&sbi->s_kobj_unregister);
 err = kobject_init_and_add(&sbi->s_kobj, &ext4_sb_ktype, ext4_root,
       "%s", sb->s_id);
 if (err) {
  kobject_put(&sbi->s_kobj);
  wait_for_completion(&sbi->s_kobj_unregister);
  return err;
 }

 if (ext4_proc_root)
  sbi->s_proc = proc_mkdir(sb->s_id, ext4_proc_root);
 if (sbi->s_proc) {
  proc_create_single_data("options", S_IRUGO, sbi->s_proc,
    ext4_seq_options_show, sb);
  proc_create_single_data("es_shrinker_info", S_IRUGO,
    sbi->s_proc, ext4_seq_es_shrinker_info_show,
    sb);
  proc_create_seq_data("mb_groups", S_IRUGO, sbi->s_proc,
    &ext4_mb_seq_groups_ops, sb);
 }
 return 0;
}
