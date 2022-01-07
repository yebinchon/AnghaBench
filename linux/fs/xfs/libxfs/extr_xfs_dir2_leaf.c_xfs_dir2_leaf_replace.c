
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_13__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef int xfs_dir2_leaf_t ;
struct xfs_dir2_leaf_entry {int address; } ;
typedef struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
struct TYPE_14__ {int inumber; } ;
typedef TYPE_3__ xfs_dir2_data_entry_t ;
struct TYPE_15__ {scalar_t__ inumber; int * trans; int filetype; int geo; TYPE_2__* dp; } ;
typedef TYPE_4__ xfs_da_args_t ;
struct xfs_buf {int * b_addr; } ;
struct TYPE_12__ {int (* data_put_ftype ) (TYPE_3__*,int ) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int *) ;} ;


 int ASSERT (int) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int cpu_to_be64 (scalar_t__) ;
 struct xfs_dir2_leaf_entry* stub1 (int *) ;
 int stub2 (TYPE_3__*,int ) ;
 int trace_xfs_dir2_leaf_replace (TYPE_4__*) ;
 int xfs_dir2_data_log_entry (TYPE_4__*,struct xfs_buf*,TYPE_3__*) ;
 int xfs_dir2_dataptr_to_off (int ,int ) ;
 int xfs_dir2_leaf_lookup_int (TYPE_4__*,struct xfs_buf**,int*,struct xfs_buf**) ;
 int xfs_dir3_leaf_check (TYPE_2__*,struct xfs_buf*) ;
 int xfs_trans_brelse (int *,struct xfs_buf*) ;

int
xfs_dir2_leaf_replace(
 xfs_da_args_t *args)
{
 struct xfs_buf *dbp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int error;
 int index;
 struct xfs_buf *lbp;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 xfs_trans_t *tp;
 struct xfs_dir2_leaf_entry *ents;

 trace_xfs_dir2_leaf_replace(args);




 if ((error = xfs_dir2_leaf_lookup_int(args, &lbp, &index, &dbp))) {
  return error;
 }
 dp = args->dp;
 leaf = lbp->b_addr;
 ents = dp->d_ops->leaf_ents_p(leaf);



 lep = &ents[index];



 dep = (xfs_dir2_data_entry_t *)
       ((char *)dbp->b_addr +
        xfs_dir2_dataptr_to_off(args->geo, be32_to_cpu(lep->address)));
 ASSERT(args->inumber != be64_to_cpu(dep->inumber));



 dep->inumber = cpu_to_be64(args->inumber);
 dp->d_ops->data_put_ftype(dep, args->filetype);
 tp = args->trans;
 xfs_dir2_data_log_entry(args, dbp, dep);
 xfs_dir3_leaf_check(dp, lbp);
 xfs_trans_brelse(tp, lbp);
 return 0;
}
