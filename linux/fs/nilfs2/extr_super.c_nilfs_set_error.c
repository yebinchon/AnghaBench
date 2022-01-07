
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_mount_state; int ns_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int s_state; } ;


 int NILFS_ERROR_FS ;
 int NILFS_SB_COMMIT_ALL ;
 int cpu_to_le16 (int) ;
 int down_write (int *) ;
 scalar_t__ likely (struct nilfs_super_block**) ;
 int nilfs_commit_super (struct super_block*,int ) ;
 struct nilfs_super_block** nilfs_prepare_super (struct super_block*,int ) ;
 int up_write (int *) ;

__attribute__((used)) static void nilfs_set_error(struct super_block *sb)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_super_block **sbp;

 down_write(&nilfs->ns_sem);
 if (!(nilfs->ns_mount_state & NILFS_ERROR_FS)) {
  nilfs->ns_mount_state |= NILFS_ERROR_FS;
  sbp = nilfs_prepare_super(sb, 0);
  if (likely(sbp)) {
   sbp[0]->s_state |= cpu_to_le16(NILFS_ERROR_FS);
   if (sbp[1])
    sbp[1]->s_state |= cpu_to_le16(NILFS_ERROR_FS);
   nilfs_commit_super(sb, NILFS_SB_COMMIT_ALL);
  }
 }
 up_write(&nilfs->ns_sem);
}
