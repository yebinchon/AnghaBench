
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_16__ {TYPE_1__* m_dirnameops; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_17__ {TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
struct TYPE_18__ {int address; int hashval; } ;
typedef TYPE_4__ xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_dataptr_t ;
typedef int xfs_dir2_data_hdr_t ;
struct TYPE_19__ {int namelen; int name; } ;
typedef TYPE_5__ xfs_dir2_data_entry_t ;
struct TYPE_20__ {int count; } ;
typedef TYPE_6__ xfs_dir2_block_tail_t ;
typedef int xfs_dahash_t ;
struct TYPE_21__ {int hashval; int op_flags; int cmpresult; int geo; int * trans; TYPE_3__* dp; } ;
typedef TYPE_7__ xfs_da_args_t ;
struct xfs_buf {int * b_addr; } ;
typedef enum xfs_dacmp { ____Placeholder_xfs_dacmp } xfs_dacmp ;
struct TYPE_15__ {int (* compname ) (TYPE_7__*,int ,int ) ;} ;


 int ASSERT (int) ;
 int ENOENT ;
 scalar_t__ XFS_CMP_CASE ;
 int XFS_CMP_DIFFERENT ;
 int XFS_CMP_EXACT ;
 int XFS_DA_OP_OKNOENT ;
 int XFS_DIR2_NULL_DATAPTR ;
 int be32_to_cpu (int ) ;
 int stub1 (TYPE_7__*,int ,int ) ;
 TYPE_4__* xfs_dir2_block_leaf_p (TYPE_6__*) ;
 TYPE_6__* xfs_dir2_block_tail_p (int ,int *) ;
 int xfs_dir2_dataptr_to_off (int ,int) ;
 int xfs_dir3_block_read (int *,TYPE_3__*,struct xfs_buf**) ;
 int xfs_dir3_data_check (TYPE_3__*,struct xfs_buf*) ;
 int xfs_trans_brelse (int *,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_dir2_block_lookup_int(
 xfs_da_args_t *args,
 struct xfs_buf **bpp,
 int *entno)
{
 xfs_dir2_dataptr_t addr;
 xfs_dir2_data_hdr_t *hdr;
 xfs_dir2_leaf_entry_t *blp;
 struct xfs_buf *bp;
 xfs_dir2_block_tail_t *btp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int error;
 xfs_dahash_t hash;
 int high;
 int low;
 int mid;
 xfs_mount_t *mp;
 xfs_trans_t *tp;
 enum xfs_dacmp cmp;

 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;

 error = xfs_dir3_block_read(tp, dp, &bp);
 if (error)
  return error;

 hdr = bp->b_addr;
 xfs_dir3_data_check(dp, bp);
 btp = xfs_dir2_block_tail_p(args->geo, hdr);
 blp = xfs_dir2_block_leaf_p(btp);




 for (low = 0, high = be32_to_cpu(btp->count) - 1; ; ) {
  ASSERT(low <= high);
  mid = (low + high) >> 1;
  if ((hash = be32_to_cpu(blp[mid].hashval)) == args->hashval)
   break;
  if (hash < args->hashval)
   low = mid + 1;
  else
   high = mid - 1;
  if (low > high) {
   ASSERT(args->op_flags & XFS_DA_OP_OKNOENT);
   xfs_trans_brelse(tp, bp);
   return -ENOENT;
  }
 }



 while (mid > 0 && be32_to_cpu(blp[mid - 1].hashval) == args->hashval) {
  mid--;
 }




 do {
  if ((addr = be32_to_cpu(blp[mid].address)) == XFS_DIR2_NULL_DATAPTR)
   continue;



  dep = (xfs_dir2_data_entry_t *)
   ((char *)hdr + xfs_dir2_dataptr_to_off(args->geo, addr));





  cmp = mp->m_dirnameops->compname(args, dep->name, dep->namelen);
  if (cmp != XFS_CMP_DIFFERENT && cmp != args->cmpresult) {
   args->cmpresult = cmp;
   *bpp = bp;
   *entno = mid;
   if (cmp == XFS_CMP_EXACT)
    return 0;
  }
 } while (++mid < be32_to_cpu(btp->count) &&
   be32_to_cpu(blp[mid].hashval) == hash);

 ASSERT(args->op_flags & XFS_DA_OP_OKNOENT);




 if (args->cmpresult == XFS_CMP_CASE)
  return 0;



 xfs_trans_brelse(tp, bp);
 return -ENOENT;
}
