
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int xfs_trans_t ;
struct TYPE_19__ {TYPE_2__* m_dirnameops; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_20__ {TYPE_1__* d_ops; TYPE_3__* i_mount; } ;
typedef TYPE_4__ xfs_inode_t ;
typedef int xfs_dir2_leaf_t ;
struct xfs_dir2_leaf_entry {int address; int hashval; } ;
typedef struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_db_t ;
struct TYPE_21__ {int namelen; int name; } ;
typedef TYPE_5__ xfs_dir2_data_entry_t ;
struct TYPE_22__ {scalar_t__ hashval; int cmpresult; int op_flags; TYPE_12__* geo; int * trans; TYPE_4__* dp; } ;
typedef TYPE_6__ xfs_da_args_t ;
struct xfs_dir3_icleaf_hdr {int count; } ;
struct xfs_buf {int * b_addr; } ;
typedef enum xfs_dacmp { ____Placeholder_xfs_dacmp } xfs_dacmp ;
struct TYPE_18__ {int (* compname ) (TYPE_6__*,int ,int ) ;} ;
struct TYPE_17__ {int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,int *) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int *) ;} ;
struct TYPE_16__ {int leafblk; } ;


 int ASSERT (int) ;
 int ENOENT ;
 scalar_t__ XFS_CMP_CASE ;
 int XFS_CMP_DIFFERENT ;
 int XFS_CMP_EXACT ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_DIR2_NULL_DATAPTR ;
 scalar_t__ be32_to_cpu (int ) ;
 struct xfs_dir2_leaf_entry* stub1 (int *) ;
 int stub2 (struct xfs_dir3_icleaf_hdr*,int *) ;
 int stub3 (TYPE_6__*,int ,int ) ;
 int xfs_dir2_dataptr_to_db (TYPE_12__*,scalar_t__) ;
 int xfs_dir2_dataptr_to_off (TYPE_12__*,scalar_t__) ;
 int xfs_dir2_db_to_da (TYPE_12__*,int) ;
 int xfs_dir2_leaf_search_hash (TYPE_6__*,struct xfs_buf*) ;
 int xfs_dir3_data_read (int *,TYPE_4__*,int ,int,struct xfs_buf**) ;
 int xfs_dir3_leaf_check (TYPE_4__*,struct xfs_buf*) ;
 int xfs_dir3_leaf_read (int *,TYPE_4__*,int ,int,struct xfs_buf**) ;
 int xfs_trans_brelse (int *,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_dir2_leaf_lookup_int(
 xfs_da_args_t *args,
 struct xfs_buf **lbpp,
 int *indexp,
 struct xfs_buf **dbpp)
{
 xfs_dir2_db_t curdb = -1;
 struct xfs_buf *dbp = ((void*)0);
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int error;
 int index;
 struct xfs_buf *lbp;
 xfs_dir2_leaf_entry_t *lep;
 xfs_dir2_leaf_t *leaf;
 xfs_mount_t *mp;
 xfs_dir2_db_t newdb;
 xfs_trans_t *tp;
 xfs_dir2_db_t cidb = -1;
 enum xfs_dacmp cmp;
 struct xfs_dir2_leaf_entry *ents;
 struct xfs_dir3_icleaf_hdr leafhdr;

 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;

 error = xfs_dir3_leaf_read(tp, dp, args->geo->leafblk, -1, &lbp);
 if (error)
  return error;

 *lbpp = lbp;
 leaf = lbp->b_addr;
 xfs_dir3_leaf_check(dp, lbp);
 ents = dp->d_ops->leaf_ents_p(leaf);
 dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);




 index = xfs_dir2_leaf_search_hash(args, lbp);




 for (lep = &ents[index];
      index < leafhdr.count && be32_to_cpu(lep->hashval) == args->hashval;
      lep++, index++) {



  if (be32_to_cpu(lep->address) == XFS_DIR2_NULL_DATAPTR)
   continue;



  newdb = xfs_dir2_dataptr_to_db(args->geo,
            be32_to_cpu(lep->address));




  if (newdb != curdb) {
   if (dbp)
    xfs_trans_brelse(tp, dbp);
   error = xfs_dir3_data_read(tp, dp,
        xfs_dir2_db_to_da(args->geo, newdb),
        -1, &dbp);
   if (error) {
    xfs_trans_brelse(tp, lbp);
    return error;
   }
   curdb = newdb;
  }



  dep = (xfs_dir2_data_entry_t *)((char *)dbp->b_addr +
   xfs_dir2_dataptr_to_off(args->geo,
      be32_to_cpu(lep->address)));





  cmp = mp->m_dirnameops->compname(args, dep->name, dep->namelen);
  if (cmp != XFS_CMP_DIFFERENT && cmp != args->cmpresult) {
   args->cmpresult = cmp;
   *indexp = index;

   if (cmp == XFS_CMP_EXACT) {
    *dbpp = dbp;
    return 0;
   }
   cidb = curdb;
  }
 }
 ASSERT(args->op_flags & XFS_DA_OP_OKNOENT);





 if (args->cmpresult == XFS_CMP_CASE) {
  ASSERT(cidb != -1);
  if (cidb != curdb) {
   xfs_trans_brelse(tp, dbp);
   error = xfs_dir3_data_read(tp, dp,
        xfs_dir2_db_to_da(args->geo, cidb),
        -1, &dbp);
   if (error) {
    xfs_trans_brelse(tp, lbp);
    return error;
   }
  }
  *dbpp = dbp;
  return 0;
 }



 ASSERT(cidb == -1);
 if (dbp)
  xfs_trans_brelse(tp, dbp);
 xfs_trans_brelse(tp, lbp);
 return -ENOENT;
}
