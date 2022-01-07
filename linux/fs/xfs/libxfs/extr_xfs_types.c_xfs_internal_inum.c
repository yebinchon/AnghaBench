
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_ino_t ;
struct TYPE_3__ {scalar_t__ sb_rbmino; scalar_t__ sb_rsumino; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 scalar_t__ xfs_is_quota_inode (TYPE_1__*,scalar_t__) ;
 scalar_t__ xfs_sb_version_hasquota (TYPE_1__*) ;

bool
xfs_internal_inum(
 struct xfs_mount *mp,
 xfs_ino_t ino)
{
 return ino == mp->m_sb.sb_rbmino || ino == mp->m_sb.sb_rsumino ||
  (xfs_sb_version_hasquota(&mp->m_sb) &&
   xfs_is_quota_inode(&mp->m_sb, ino));
}
