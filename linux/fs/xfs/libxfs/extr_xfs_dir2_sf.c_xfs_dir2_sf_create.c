
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int di_size; scalar_t__ di_format; } ;
struct TYPE_14__ {scalar_t__ if_data; } ;
struct TYPE_15__ {int if_flags; scalar_t__ if_bytes; TYPE_1__ if_u1; } ;
struct TYPE_18__ {TYPE_4__ i_d; TYPE_3__* d_ops; TYPE_2__ i_df; } ;
typedef TYPE_5__ xfs_inode_t ;
typedef int xfs_ino_t ;
struct TYPE_19__ {int i8count; scalar_t__ count; } ;
typedef TYPE_6__ xfs_dir2_sf_hdr_t ;
struct TYPE_20__ {int trans; TYPE_5__* dp; } ;
typedef TYPE_7__ xfs_da_args_t ;
struct TYPE_16__ {int (* sf_put_parent_ino ) (TYPE_6__*,int ) ;} ;


 int ASSERT (int) ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DINODE_FMT_EXTENTS ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_DIR2_MAX_SHORT_INUM ;
 int XFS_IFEXTENTS ;
 int XFS_IFINLINE ;
 int XFS_ILOG_CORE ;
 int XFS_ILOG_DDATA ;
 int stub1 (TYPE_6__*,int ) ;
 int trace_xfs_dir2_sf_create (TYPE_7__*) ;
 int xfs_dir2_sf_check (TYPE_7__*) ;
 int xfs_dir2_sf_hdr_size (int) ;
 int xfs_idata_realloc (TYPE_5__*,int,int ) ;
 int xfs_trans_log_inode (int ,TYPE_5__*,int) ;

int
xfs_dir2_sf_create(
 xfs_da_args_t *args,
 xfs_ino_t pino)
{
 xfs_inode_t *dp;
 int i8count;
 xfs_dir2_sf_hdr_t *sfp;
 int size;

 trace_xfs_dir2_sf_create(args);

 dp = args->dp;

 ASSERT(dp != ((void*)0));
 ASSERT(dp->i_d.di_size == 0);




 if (dp->i_d.di_format == XFS_DINODE_FMT_EXTENTS) {
  dp->i_df.if_flags &= ~XFS_IFEXTENTS;
  dp->i_d.di_format = XFS_DINODE_FMT_LOCAL;
  xfs_trans_log_inode(args->trans, dp, XFS_ILOG_CORE);
  dp->i_df.if_flags |= XFS_IFINLINE;
 }
 ASSERT(dp->i_df.if_flags & XFS_IFINLINE);
 ASSERT(dp->i_df.if_bytes == 0);
 i8count = pino > XFS_DIR2_MAX_SHORT_INUM;
 size = xfs_dir2_sf_hdr_size(i8count);



 xfs_idata_realloc(dp, size, XFS_DATA_FORK);



 sfp = (xfs_dir2_sf_hdr_t *)dp->i_df.if_u1.if_data;
 sfp->i8count = i8count;



 dp->d_ops->sf_put_parent_ino(sfp, pino);
 sfp->count = 0;
 dp->i_d.di_size = size;
 xfs_dir2_sf_check(args);
 xfs_trans_log_inode(args->trans, dp, XFS_ILOG_CORE | XFS_ILOG_DDATA);
 return 0;
}
