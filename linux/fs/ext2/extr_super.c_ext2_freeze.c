
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_remove_count; } ;
struct ext2_sb_info {TYPE_1__* s_es; int s_lock; int s_mount_state; } ;
struct TYPE_2__ {int s_state; } ;


 struct ext2_sb_info* EXT2_SB (struct super_block*) ;
 scalar_t__ atomic_long_read (int *) ;
 int cpu_to_le16 (int ) ;
 int ext2_sync_fs (struct super_block*,int) ;
 int ext2_sync_super (struct super_block*,TYPE_1__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ext2_freeze(struct super_block *sb)
{
 struct ext2_sb_info *sbi = EXT2_SB(sb);






 if (atomic_long_read(&sb->s_remove_count)) {
  ext2_sync_fs(sb, 1);
  return 0;
 }

 spin_lock(&sbi->s_lock);
 sbi->s_es->s_state = cpu_to_le16(sbi->s_mount_state);
 spin_unlock(&sbi->s_lock);
 ext2_sync_super(sb, sbi->s_es, 1);

 return 0;
}
