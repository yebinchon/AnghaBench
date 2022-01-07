
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct mount_options {int mount_opt; } ;


 int ML_ERROR ;
 int OCFS2_FEATURE_INCOMPAT_XATTR ;
 int OCFS2_FEATURE_RO_COMPAT_GRPQUOTA ;
 int OCFS2_FEATURE_RO_COMPAT_USRQUOTA ;
 scalar_t__ OCFS2_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 int OCFS2_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int OCFS2_MOUNT_GRPQUOTA ;
 int OCFS2_MOUNT_NO_POSIX_ACL ;
 int OCFS2_MOUNT_POSIX_ACL ;
 int OCFS2_MOUNT_USRQUOTA ;
 int mlog (int ,char*) ;

__attribute__((used)) static int ocfs2_check_set_options(struct super_block *sb,
       struct mount_options *options)
{
 if (options->mount_opt & OCFS2_MOUNT_USRQUOTA &&
     !OCFS2_HAS_RO_COMPAT_FEATURE(sb,
      OCFS2_FEATURE_RO_COMPAT_USRQUOTA)) {
  mlog(ML_ERROR, "User quotas were requested, but this "
       "filesystem does not have the feature enabled.\n");
  return 0;
 }
 if (options->mount_opt & OCFS2_MOUNT_GRPQUOTA &&
     !OCFS2_HAS_RO_COMPAT_FEATURE(sb,
      OCFS2_FEATURE_RO_COMPAT_GRPQUOTA)) {
  mlog(ML_ERROR, "Group quotas were requested, but this "
       "filesystem does not have the feature enabled.\n");
  return 0;
 }
 if (options->mount_opt & OCFS2_MOUNT_POSIX_ACL &&
     !OCFS2_HAS_INCOMPAT_FEATURE(sb, OCFS2_FEATURE_INCOMPAT_XATTR)) {
  mlog(ML_ERROR, "ACL support requested but extended attributes "
       "feature is not enabled\n");
  return 0;
 }

 if (!(options->mount_opt & (OCFS2_MOUNT_POSIX_ACL |
        OCFS2_MOUNT_NO_POSIX_ACL))) {
  if (OCFS2_HAS_INCOMPAT_FEATURE(sb, OCFS2_FEATURE_INCOMPAT_XATTR))
   options->mount_opt |= OCFS2_MOUNT_POSIX_ACL;
  else
   options->mount_opt |= OCFS2_MOUNT_NO_POSIX_ACL;
 }
 return 1;
}
