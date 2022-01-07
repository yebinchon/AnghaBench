
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_12__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef int xfs_dir2_leaf_t ;
struct xfs_dir2_leaf_entry {int address; } ;
typedef struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
struct TYPE_13__ {int namelen; int name; int inumber; } ;
typedef TYPE_3__ xfs_dir2_data_entry_t ;
struct TYPE_14__ {int filetype; int inumber; int geo; TYPE_2__* dp; int * trans; } ;
typedef TYPE_4__ xfs_da_args_t ;
struct xfs_buf {int * b_addr; } ;
struct TYPE_11__ {int (* data_get_ftype ) (TYPE_3__*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int *) ;} ;


 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 struct xfs_dir2_leaf_entry* stub1 (int *) ;
 int stub2 (TYPE_3__*) ;
 int trace_xfs_dir2_leaf_lookup (TYPE_4__*) ;
 int xfs_dir2_dataptr_to_off (int ,int ) ;
 int xfs_dir2_leaf_lookup_int (TYPE_4__*,struct xfs_buf**,int*,struct xfs_buf**) ;
 int xfs_dir3_leaf_check (TYPE_2__*,struct xfs_buf*) ;
 int xfs_dir_cilookup_result (TYPE_4__*,int ,int ) ;
 int xfs_trans_brelse (int *,struct xfs_buf*) ;

int
xfs_dir2_leaf_lookup(
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

 trace_xfs_dir2_leaf_lookup(args);




 if ((error = xfs_dir2_leaf_lookup_int(args, &lbp, &index, &dbp))) {
  return error;
 }
 tp = args->trans;
 dp = args->dp;
 xfs_dir3_leaf_check(dp, lbp);
 leaf = lbp->b_addr;
 ents = dp->d_ops->leaf_ents_p(leaf);



 lep = &ents[index];




 dep = (xfs_dir2_data_entry_t *)
       ((char *)dbp->b_addr +
        xfs_dir2_dataptr_to_off(args->geo, be32_to_cpu(lep->address)));



 args->inumber = be64_to_cpu(dep->inumber);
 args->filetype = dp->d_ops->data_get_ftype(dep);
 error = xfs_dir_cilookup_result(args, dep->name, dep->namelen);
 xfs_trans_brelse(tp, dbp);
 xfs_trans_brelse(tp, lbp);
 return error;
}
