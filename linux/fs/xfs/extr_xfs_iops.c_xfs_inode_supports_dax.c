
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sb_blocksize; } ;
struct xfs_mount {int m_flags; TYPE_2__ m_sb; } ;
struct TYPE_5__ {int di_flags2; } ;
struct xfs_inode {TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct TYPE_7__ {int i_mode; } ;


 scalar_t__ PAGE_SIZE ;
 int S_ISREG (int ) ;
 TYPE_3__* VFS_I (struct xfs_inode*) ;
 int XFS_DIFLAG2_DAX ;
 int XFS_MOUNT_DAX ;
 int * xfs_find_daxdev_for_inode (TYPE_3__*) ;
 scalar_t__ xfs_is_reflink_inode (struct xfs_inode*) ;

__attribute__((used)) static bool
xfs_inode_supports_dax(
 struct xfs_inode *ip)
{
 struct xfs_mount *mp = ip->i_mount;


 if (!S_ISREG(VFS_I(ip)->i_mode) || xfs_is_reflink_inode(ip))
  return 0;


 if (!(mp->m_flags & XFS_MOUNT_DAX) &&
     !(ip->i_d.di_flags2 & XFS_DIFLAG2_DAX))
  return 0;


 if (mp->m_sb.sb_blocksize != PAGE_SIZE)
  return 0;


 return xfs_find_daxdev_for_inode(VFS_I(ip)) != ((void*)0);
}
