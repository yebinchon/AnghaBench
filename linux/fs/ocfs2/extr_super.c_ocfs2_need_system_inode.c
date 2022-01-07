
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int sb; } ;


 int GROUP_QUOTA_SYSTEM_INODE ;
 int LOCAL_GROUP_QUOTA_SYSTEM_INODE ;
 int LOCAL_USER_QUOTA_SYSTEM_INODE ;
 int OCFS2_FEATURE_RO_COMPAT_GRPQUOTA ;
 int OCFS2_FEATURE_RO_COMPAT_USRQUOTA ;
 int OCFS2_HAS_RO_COMPAT_FEATURE (int ,int ) ;
 int USER_QUOTA_SYSTEM_INODE ;

__attribute__((used)) static int ocfs2_need_system_inode(struct ocfs2_super *osb, int ino)
{
 if (!OCFS2_HAS_RO_COMPAT_FEATURE(osb->sb, OCFS2_FEATURE_RO_COMPAT_USRQUOTA)
     && (ino == USER_QUOTA_SYSTEM_INODE
  || ino == LOCAL_USER_QUOTA_SYSTEM_INODE))
  return 0;
 if (!OCFS2_HAS_RO_COMPAT_FEATURE(osb->sb, OCFS2_FEATURE_RO_COMPAT_GRPQUOTA)
     && (ino == GROUP_QUOTA_SYSTEM_INODE
  || ino == LOCAL_GROUP_QUOTA_SYSTEM_INODE))
  return 0;
 return 1;
}
