
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_8__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef int xfs_dir2_free_t ;
typedef int xfs_dablk_t ;
struct TYPE_9__ {int geo; int * trans; TYPE_2__* dp; } ;
typedef TYPE_3__ xfs_da_args_t ;
struct xfs_dir3_icfree_hdr {scalar_t__ nused; } ;
struct xfs_buf {int * b_addr; } ;
struct TYPE_7__ {int (* free_hdr_from_disk ) (struct xfs_dir3_icfree_hdr*,int *) ;} ;


 int ASSERT (int) ;
 int ENOSPC ;
 int stub1 (struct xfs_dir3_icfree_hdr*,int *) ;
 int xfs_dir2_da_to_db (int ,int ) ;
 int xfs_dir2_free_try_read (int *,TYPE_2__*,scalar_t__,struct xfs_buf**) ;
 int xfs_dir2_shrink_inode (TYPE_3__*,int ,struct xfs_buf*) ;
 int xfs_trans_brelse (int *,struct xfs_buf*) ;

int
xfs_dir2_node_trim_free(
 xfs_da_args_t *args,
 xfs_fileoff_t fo,
 int *rvalp)
{
 struct xfs_buf *bp;
 xfs_inode_t *dp;
 int error;
 xfs_dir2_free_t *free;
 xfs_trans_t *tp;
 struct xfs_dir3_icfree_hdr freehdr;

 dp = args->dp;
 tp = args->trans;

 *rvalp = 0;




 error = xfs_dir2_free_try_read(tp, dp, fo, &bp);
 if (error)
  return error;




 if (!bp)
  return 0;
 free = bp->b_addr;
 dp->d_ops->free_hdr_from_disk(&freehdr, free);




 if (freehdr.nused > 0) {
  xfs_trans_brelse(tp, bp);
  return 0;
 }



 error = xfs_dir2_shrink_inode(args,
   xfs_dir2_da_to_db(args->geo, (xfs_dablk_t)fo), bp);
 if (error) {





  ASSERT(error != -ENOSPC);
  xfs_trans_brelse(tp, bp);
  return error;
 }



 *rvalp = 1;
 return 0;
}
