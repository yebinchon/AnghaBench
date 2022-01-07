
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int dummy; } ;


 int NILFS_SB_COMMIT ;
 int down_write (int *) ;
 scalar_t__ likely (struct nilfs_super_block**) ;
 int nilfs_commit_super (struct super_block*,int ) ;
 int nilfs_construct_segment (struct super_block*) ;
 int nilfs_flush_device (struct the_nilfs*) ;
 struct nilfs_super_block** nilfs_prepare_super (struct super_block*,int ) ;
 scalar_t__ nilfs_sb_dirty (struct the_nilfs*) ;
 int nilfs_sb_will_flip (struct the_nilfs*) ;
 int nilfs_set_log_cursor (struct nilfs_super_block*,struct the_nilfs*) ;
 int up_write (int *) ;

__attribute__((used)) static int nilfs_sync_fs(struct super_block *sb, int wait)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_super_block **sbp;
 int err = 0;


 if (wait)
  err = nilfs_construct_segment(sb);

 down_write(&nilfs->ns_sem);
 if (nilfs_sb_dirty(nilfs)) {
  sbp = nilfs_prepare_super(sb, nilfs_sb_will_flip(nilfs));
  if (likely(sbp)) {
   nilfs_set_log_cursor(sbp[0], nilfs);
   nilfs_commit_super(sb, NILFS_SB_COMMIT);
  }
 }
 up_write(&nilfs->ns_sem);

 if (!err)
  err = nilfs_flush_device(nilfs);

 return err;
}
