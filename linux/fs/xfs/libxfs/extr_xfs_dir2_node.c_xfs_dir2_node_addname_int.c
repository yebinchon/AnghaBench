
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_dir2_db_t ;
struct xfs_dir2_data_unused {int dummy; } ;
typedef struct xfs_dir2_data_unused xfs_dir2_data_unused_t ;
struct xfs_dir2_data_entry {int namelen; int name; int inumber; } ;
typedef struct xfs_dir2_data_entry xfs_dir2_data_entry_t ;
typedef scalar_t__ xfs_dir2_data_aoff_t ;
typedef scalar_t__ xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir2_free {int dummy; } ;
typedef struct xfs_dir2_free xfs_dir2_data_hdr ;
struct xfs_dir2_data_free {int length; int offset; } ;
struct xfs_da_state_blk {int dummy; } ;
struct xfs_da_args {int op_flags; int index; scalar_t__ blkno; int filetype; int name; int namelen; int inumber; int geo; struct xfs_inode* dp; struct xfs_trans* trans; } ;
struct xfs_buf {struct xfs_dir2_free* b_addr; } ;
typedef int __be16 ;
struct TYPE_2__ {int (* data_entsize ) (int ) ;int * (* free_bests_p ) (struct xfs_dir2_free*) ;int * (* data_entry_tag_p ) (struct xfs_dir2_data_entry*) ;int (* data_put_ftype ) (struct xfs_dir2_data_entry*,int ) ;struct xfs_dir2_data_free* (* data_bestfree_p ) (struct xfs_dir2_free*) ;} ;


 int ASSERT (int) ;
 int ENOSPC ;
 int XFS_DA_OP_JUSTCHECK ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be64 (int ) ;
 int memcpy (int ,int ,int ) ;
 int stub1 (int ) ;
 struct xfs_dir2_data_free* stub2 (struct xfs_dir2_free*) ;
 int stub3 (struct xfs_dir2_data_entry*,int ) ;
 int * stub4 (struct xfs_dir2_data_entry*) ;
 int * stub5 (struct xfs_dir2_free*) ;
 int xfs_dir2_data_freescan (struct xfs_inode*,struct xfs_dir2_free*,int*) ;
 int xfs_dir2_data_log_entry (struct xfs_da_args*,struct xfs_buf*,struct xfs_dir2_data_entry*) ;
 int xfs_dir2_data_log_header (struct xfs_da_args*,struct xfs_buf*) ;
 int xfs_dir2_data_use_free (struct xfs_da_args*,struct xfs_buf*,struct xfs_dir2_data_unused*,scalar_t__,int,int*,int*) ;
 int xfs_dir2_db_to_da (int ,int) ;
 int xfs_dir2_free_log_bests (struct xfs_da_args*,struct xfs_buf*,int,int) ;
 int xfs_dir2_node_add_datablk (struct xfs_da_args*,struct xfs_da_state_blk*,int*,struct xfs_buf**,struct xfs_buf**,int*) ;
 int xfs_dir2_node_find_freeblk (struct xfs_da_args*,struct xfs_da_state_blk*,int*,struct xfs_buf**,int*,int) ;
 int xfs_dir3_data_read (struct xfs_trans*,struct xfs_inode*,int ,int,struct xfs_buf**) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_dir2_node_addname_int(
 struct xfs_da_args *args,
 struct xfs_da_state_blk *fblk)
{
 struct xfs_dir2_data_unused *dup;
 struct xfs_dir2_data_entry *dep;
 struct xfs_dir2_data_hdr *hdr;
 struct xfs_dir2_data_free *bf;
 struct xfs_dir2_free *free = ((void*)0);
 struct xfs_trans *tp = args->trans;
 struct xfs_inode *dp = args->dp;
 struct xfs_buf *dbp;
 struct xfs_buf *fbp;
 xfs_dir2_data_aoff_t aoff;
 xfs_dir2_db_t dbno;
 int error;
 int findex;
 int length;
 int logfree = 0;
 int needlog = 0;
 int needscan = 0;
 __be16 *tagp;
 __be16 *bests;

 length = dp->d_ops->data_entsize(args->namelen);
 error = xfs_dir2_node_find_freeblk(args, fblk, &dbno, &fbp, &findex,
        length);
 if (error)
  return error;





 if (args->op_flags & XFS_DA_OP_JUSTCHECK) {
  if (dbno == -1)
   return -ENOSPC;
  return 0;
 }





 if (dbno == -1) {

  logfree = 1;
  error = xfs_dir2_node_add_datablk(args, fblk, &dbno, &dbp, &fbp,
        &findex);
 } else {

  error = xfs_dir3_data_read(tp, dp,
        xfs_dir2_db_to_da(args->geo, dbno),
        -1, &dbp);
 }
 if (error)
  return error;


 hdr = dbp->b_addr;
 bf = dp->d_ops->data_bestfree_p(hdr);
 ASSERT(be16_to_cpu(bf[0].length) >= length);


 dup = (xfs_dir2_data_unused_t *)
       ((char *)hdr + be16_to_cpu(bf[0].offset));


 aoff = (xfs_dir2_data_aoff_t)((char *)dup - (char *)hdr);
 error = xfs_dir2_data_use_free(args, dbp, dup, aoff, length,
   &needlog, &needscan);
 if (error) {
  xfs_trans_brelse(tp, dbp);
  return error;
 }


 dep = (xfs_dir2_data_entry_t *)dup;
 dep->inumber = cpu_to_be64(args->inumber);
 dep->namelen = args->namelen;
 memcpy(dep->name, args->name, dep->namelen);
 dp->d_ops->data_put_ftype(dep, args->filetype);
 tagp = dp->d_ops->data_entry_tag_p(dep);
 *tagp = cpu_to_be16((char *)dep - (char *)hdr);
 xfs_dir2_data_log_entry(args, dbp, dep);


 if (needscan)
  xfs_dir2_data_freescan(dp, hdr, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(args, dbp);


 free = fbp->b_addr;
 bests = dp->d_ops->free_bests_p(free);
 if (bests[findex] != bf[0].length) {
  bests[findex] = bf[0].length;
  logfree = 1;
 }


 if (logfree)
  xfs_dir2_free_log_bests(args, fbp, findex, findex);


 args->blkno = (xfs_dablk_t)dbno;
 args->index = be16_to_cpu(*tagp);
 return 0;
}
