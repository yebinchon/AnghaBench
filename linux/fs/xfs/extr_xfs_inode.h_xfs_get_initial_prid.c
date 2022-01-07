
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int di_flags; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
typedef int prid_t ;


 int XFS_DIFLAG_PROJINHERIT ;
 int XFS_PROJID_DEFAULT ;
 int xfs_get_projid (struct xfs_inode*) ;

__attribute__((used)) static inline prid_t
xfs_get_initial_prid(struct xfs_inode *dp)
{
 if (dp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT)
  return xfs_get_projid(dp);

 return XFS_PROJID_DEFAULT;
}
