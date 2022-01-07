
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int di_extsize; int di_cowextsize; void* di_nextents; void* di_anextents; } ;
struct TYPE_8__ {int if_flags; } ;
struct xfs_inode {TYPE_3__ i_d; TYPE_4__ i_df; TYPE_4__* i_afp; TYPE_2__* i_mount; } ;
struct fsxattr {int fsx_extsize; int fsx_cowextsize; void* fsx_nextents; int fsx_projid; } ;
struct TYPE_5__ {int sb_blocklog; } ;
struct TYPE_6__ {TYPE_1__ m_sb; } ;


 int XFS_IFEXTENTS ;
 int simple_fill_fsxattr (struct fsxattr*,int ) ;
 int xfs_get_projid (struct xfs_inode*) ;
 void* xfs_iext_count (TYPE_4__*) ;
 int xfs_ip2xflags (struct xfs_inode*) ;

__attribute__((used)) static void
xfs_fill_fsxattr(
 struct xfs_inode *ip,
 bool attr,
 struct fsxattr *fa)
{
 simple_fill_fsxattr(fa, xfs_ip2xflags(ip));
 fa->fsx_extsize = ip->i_d.di_extsize << ip->i_mount->m_sb.sb_blocklog;
 fa->fsx_cowextsize = ip->i_d.di_cowextsize <<
   ip->i_mount->m_sb.sb_blocklog;
 fa->fsx_projid = xfs_get_projid(ip);

 if (attr) {
  if (ip->i_afp) {
   if (ip->i_afp->if_flags & XFS_IFEXTENTS)
    fa->fsx_nextents = xfs_iext_count(ip->i_afp);
   else
    fa->fsx_nextents = ip->i_d.di_anextents;
  } else
   fa->fsx_nextents = 0;
 } else {
  if (ip->i_df.if_flags & XFS_IFEXTENTS)
   fa->fsx_nextents = xfs_iext_count(&ip->i_df);
  else
   fa->fsx_nextents = ip->i_d.di_nextents;
 }
}
