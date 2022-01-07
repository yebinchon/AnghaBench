
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_extlen_t ;
struct xfs_mount {int m_flags; scalar_t__ m_dalign; scalar_t__ m_swidth; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;


 scalar_t__ XFS_FSB_TO_B (struct xfs_mount*,scalar_t__) ;
 scalar_t__ XFS_ISIZE (struct xfs_inode*) ;
 int XFS_IS_REALTIME_INODE (struct xfs_inode*) ;
 int XFS_MOUNT_SWALLOC ;
 scalar_t__ roundup_64 (scalar_t__,scalar_t__) ;

xfs_extlen_t
xfs_eof_alignment(
 struct xfs_inode *ip,
 xfs_extlen_t extsize)
{
 struct xfs_mount *mp = ip->i_mount;
 xfs_extlen_t align = 0;

 if (!XFS_IS_REALTIME_INODE(ip)) {
  if (mp->m_swidth && (mp->m_flags & XFS_MOUNT_SWALLOC))
   align = mp->m_swidth;
  else if (mp->m_dalign)
   align = mp->m_dalign;

  if (align && XFS_ISIZE(ip) < XFS_FSB_TO_B(mp, align))
   align = 0;
 }





 if (extsize) {
  if (align)
   align = roundup_64(align, extsize);
  else
   align = extsize;
 }

 return align;
}
