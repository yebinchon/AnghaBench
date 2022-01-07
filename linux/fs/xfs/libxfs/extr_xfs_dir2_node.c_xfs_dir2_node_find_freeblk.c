
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_dir2_db_t ;
typedef int xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icfree_hdr {int nvalid; scalar_t__ firstdb; } ;
struct xfs_dir2_free {int dummy; } ;
struct xfs_da_state_blk {int index; scalar_t__ blkno; struct xfs_buf* bp; } ;
struct xfs_da_args {int geo; struct xfs_trans* trans; struct xfs_inode* dp; } ;
struct xfs_buf {struct xfs_dir2_free* b_addr; } ;
typedef int __be16 ;
struct TYPE_2__ {int (* free_hdr_from_disk ) (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ;int * (* free_bests_p ) (struct xfs_dir2_free*) ;} ;


 int ASSERT (int) ;
 int NULLDATAOFF ;
 int XFS_DATA_FORK ;
 int XFS_DIR2_FREE_OFFSET ;
 int be16_to_cpu (int ) ;
 int * stub1 (struct xfs_dir2_free*) ;
 int stub2 (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ;
 int * stub3 (struct xfs_dir2_free*) ;
 int stub4 (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ;
 int xfs_bmap_last_offset (struct xfs_inode*,scalar_t__*,int ) ;
 scalar_t__ xfs_dir2_byte_to_db (int ,int ) ;
 scalar_t__ xfs_dir2_da_to_db (int ,int ) ;
 int xfs_dir2_db_to_da (int ,scalar_t__) ;
 int xfs_dir2_free_try_read (struct xfs_trans*,struct xfs_inode*,int ,struct xfs_buf**) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_dir2_node_find_freeblk(
 struct xfs_da_args *args,
 struct xfs_da_state_blk *fblk,
 xfs_dir2_db_t *dbnop,
 struct xfs_buf **fbpp,
 int *findexp,
 int length)
{
 struct xfs_dir3_icfree_hdr freehdr;
 struct xfs_dir2_free *free = ((void*)0);
 struct xfs_inode *dp = args->dp;
 struct xfs_trans *tp = args->trans;
 struct xfs_buf *fbp = ((void*)0);
 xfs_dir2_db_t firstfbno;
 xfs_dir2_db_t lastfbno;
 xfs_dir2_db_t ifbno = -1;
 xfs_dir2_db_t dbno = -1;
 xfs_dir2_db_t fbno;
 xfs_fileoff_t fo;
 __be16 *bests = ((void*)0);
 int findex = 0;
 int error;






 if (fblk) {
  fbp = fblk->bp;
  free = fbp->b_addr;
  findex = fblk->index;
  if (findex >= 0) {

   bests = dp->d_ops->free_bests_p(free);
   dp->d_ops->free_hdr_from_disk(&freehdr, free);

   ASSERT(findex < freehdr.nvalid);
   ASSERT(be16_to_cpu(bests[findex]) != NULLDATAOFF);
   ASSERT(be16_to_cpu(bests[findex]) >= length);
   dbno = freehdr.firstdb + findex;
   goto found_block;
  }





  ifbno = fblk->blkno;
  xfs_trans_brelse(tp, fbp);
  fbp = ((void*)0);
  fblk->bp = ((void*)0);
 }





 error = xfs_bmap_last_offset(dp, &fo, XFS_DATA_FORK);
 if (error)
  return error;
 lastfbno = xfs_dir2_da_to_db(args->geo, (xfs_dablk_t)fo);
 firstfbno = xfs_dir2_byte_to_db(args->geo, XFS_DIR2_FREE_OFFSET);

 for (fbno = lastfbno - 1; fbno >= firstfbno; fbno--) {

  if (fbno == ifbno)
   continue;






  error = xfs_dir2_free_try_read(tp, dp,
    xfs_dir2_db_to_da(args->geo, fbno),
    &fbp);
  if (error)
   return error;
  if (!fbp)
   continue;

  free = fbp->b_addr;
  bests = dp->d_ops->free_bests_p(free);
  dp->d_ops->free_hdr_from_disk(&freehdr, free);


  for (findex = freehdr.nvalid - 1; findex >= 0; findex--) {
   if (be16_to_cpu(bests[findex]) != NULLDATAOFF &&
       be16_to_cpu(bests[findex]) >= length) {
    dbno = freehdr.firstdb + findex;
    goto found_block;
   }
  }


  xfs_trans_brelse(tp, fbp);
 }

found_block:
 *dbnop = dbno;
 *fbpp = fbp;
 *findexp = findex;
 return 0;
}
