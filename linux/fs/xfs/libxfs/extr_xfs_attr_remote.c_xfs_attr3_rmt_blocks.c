
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_blocksize; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 int XFS_ATTR3_RMT_BUF_SPACE (struct xfs_mount*,int ) ;
 int XFS_B_TO_FSB (struct xfs_mount*,int) ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_1__*) ;

int
xfs_attr3_rmt_blocks(
 struct xfs_mount *mp,
 int attrlen)
{
 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  int buflen = XFS_ATTR3_RMT_BUF_SPACE(mp, mp->m_sb.sb_blocksize);
  return (attrlen + buflen - 1) / buflen;
 }
 return XFS_B_TO_FSB(mp, attrlen);
}
