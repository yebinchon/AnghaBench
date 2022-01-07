
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_mount_opt; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int dummy; } ;


 int NILFS_MOUNT_BARRIER ;
 int NILFS_MOUNT_ERRORS_RO ;

__attribute__((used)) static inline void
nilfs_set_default_options(struct super_block *sb,
     struct nilfs_super_block *sbp)
{
 struct the_nilfs *nilfs = sb->s_fs_info;

 nilfs->ns_mount_opt =
  NILFS_MOUNT_ERRORS_RO | NILFS_MOUNT_BARRIER;
}
