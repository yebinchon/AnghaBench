
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_blocksize; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 int XFS_SYMLINK_BUF_SPACE (struct xfs_mount*,int ) ;

int
xfs_symlink_blocks(
 struct xfs_mount *mp,
 int pathlen)
{
 int buflen = XFS_SYMLINK_BUF_SPACE(mp, mp->m_sb.sb_blocksize);

 return (pathlen + buflen - 1) / buflen;
}
