
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int di_flags; } ;
struct TYPE_5__ {int if_flags; } ;
struct xfs_inode {scalar_t__ i_delayed_blks; TYPE_2__ i_d; TYPE_1__ i_df; } ;
struct TYPE_8__ {scalar_t__ i_size; TYPE_3__* i_mapping; int i_mode; } ;
struct TYPE_7__ {scalar_t__ nrpages; } ;


 int S_ISREG (int ) ;
 TYPE_4__* VFS_I (struct xfs_inode*) ;
 int XFS_DIFLAG_APPEND ;
 int XFS_DIFLAG_PREALLOC ;
 int XFS_IFEXTENTS ;

bool
xfs_can_free_eofblocks(struct xfs_inode *ip, bool force)
{

 if (!S_ISREG(VFS_I(ip)->i_mode))
  return 0;





 if (VFS_I(ip)->i_size == 0 &&
     VFS_I(ip)->i_mapping->nrpages == 0 &&
     ip->i_delayed_blks == 0)
  return 0;


 if (!(ip->i_df.if_flags & XFS_IFEXTENTS))
  return 0;





 if (ip->i_d.di_flags & (XFS_DIFLAG_PREALLOC | XFS_DIFLAG_APPEND))
  if (!force || ip->i_delayed_blks == 0)
   return 0;

 return 1;
}
