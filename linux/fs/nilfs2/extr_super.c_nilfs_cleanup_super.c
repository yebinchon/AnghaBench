
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_mount_state; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {scalar_t__ s_last_cno; int s_state; } ;


 int EIO ;
 int NILFS_SB_COMMIT ;
 int NILFS_SB_COMMIT_ALL ;
 int cpu_to_le16 (int ) ;
 int nilfs_commit_super (struct super_block*,int) ;
 struct nilfs_super_block** nilfs_prepare_super (struct super_block*,int ) ;
 int nilfs_set_log_cursor (struct nilfs_super_block*,struct the_nilfs*) ;

int nilfs_cleanup_super(struct super_block *sb)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_super_block **sbp;
 int flag = NILFS_SB_COMMIT;
 int ret = -EIO;

 sbp = nilfs_prepare_super(sb, 0);
 if (sbp) {
  sbp[0]->s_state = cpu_to_le16(nilfs->ns_mount_state);
  nilfs_set_log_cursor(sbp[0], nilfs);
  if (sbp[1] && sbp[0]->s_last_cno == sbp[1]->s_last_cno) {





   sbp[1]->s_state = sbp[0]->s_state;
   flag = NILFS_SB_COMMIT_ALL;
  }
  ret = nilfs_commit_super(sb, flag);
 }
 return ret;
}
