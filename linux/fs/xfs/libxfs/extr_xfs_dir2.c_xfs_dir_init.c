
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int t_mountp; } ;
typedef TYPE_2__ xfs_trans_t ;
struct TYPE_11__ {int i_ino; TYPE_1__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
struct xfs_da_args {TYPE_2__* trans; TYPE_3__* dp; int geo; } ;
struct TYPE_12__ {int i_mode; } ;
struct TYPE_9__ {int m_dir_geo; } ;


 int ASSERT (int ) ;
 int ENOMEM ;
 int KM_NOFS ;
 int S_ISDIR (int ) ;
 TYPE_7__* VFS_I (TYPE_3__*) ;
 int kmem_free (struct xfs_da_args*) ;
 struct xfs_da_args* kmem_zalloc (int,int ) ;
 int xfs_dir2_sf_create (struct xfs_da_args*,int ) ;
 int xfs_dir_ino_validate (int ,int ) ;

int
xfs_dir_init(
 xfs_trans_t *tp,
 xfs_inode_t *dp,
 xfs_inode_t *pdp)
{
 struct xfs_da_args *args;
 int error;

 ASSERT(S_ISDIR(VFS_I(dp)->i_mode));
 error = xfs_dir_ino_validate(tp->t_mountp, pdp->i_ino);
 if (error)
  return error;

 args = kmem_zalloc(sizeof(*args), KM_NOFS);
 if (!args)
  return -ENOMEM;

 args->geo = dp->i_mount->m_dir_geo;
 args->dp = dp;
 args->trans = tp;
 error = xfs_dir2_sf_create(args, pdp->i_ino);
 kmem_free(args);
 return error;
}
