
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_fileoff_t ;
typedef int xfs_daddr_t ;
typedef scalar_t__ xfs_dablk_t ;
typedef int uint8_t ;
struct xfs_mount {int m_ddev_targp; } ;
struct xfs_inode {int i_ino; struct xfs_mount* i_mount; } ;
struct xfs_da_args {int rmtvaluelen; int rmtblkcnt; struct xfs_inode* dp; scalar_t__ rmtblkno; int trans; int total; int * value; } ;
struct xfs_buf {int * b_ops; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; scalar_t__ br_blockcount; } ;


 int ASSERT (int) ;
 scalar_t__ DELAYSTARTBLOCK ;
 int ENOMEM ;
 scalar_t__ HOLESTARTBLOCK ;
 int XFS_ATTR_FORK ;
 int XFS_BMAPI_ATTRFORK ;
 int XFS_FSB_TO_BB (struct xfs_mount*,scalar_t__) ;
 int XFS_FSB_TO_DADDR (struct xfs_mount*,scalar_t__) ;
 int trace_xfs_attr_rmtval_set (struct xfs_da_args*) ;
 int xfs_attr3_rmt_blocks (struct xfs_mount*,int) ;
 int xfs_attr3_rmt_buf_ops ;
 int xfs_attr_rmtval_copyin (struct xfs_mount*,struct xfs_buf*,int ,int*,int*,int **) ;
 int xfs_bmap_first_unused (int ,struct xfs_inode*,int,scalar_t__*,int ) ;
 int xfs_bmapi_read (struct xfs_inode*,scalar_t__,int,struct xfs_bmbt_irec*,int*,int ) ;
 int xfs_bmapi_write (int ,struct xfs_inode*,scalar_t__,int,int ,int ,struct xfs_bmbt_irec*,int*) ;
 struct xfs_buf* xfs_buf_get (int ,int ,int) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_bwrite (struct xfs_buf*) ;
 int xfs_defer_finish (int *) ;
 int xfs_trans_roll_inode (int *,struct xfs_inode*) ;

int
xfs_attr_rmtval_set(
 struct xfs_da_args *args)
{
 struct xfs_inode *dp = args->dp;
 struct xfs_mount *mp = dp->i_mount;
 struct xfs_bmbt_irec map;
 xfs_dablk_t lblkno;
 xfs_fileoff_t lfileoff = 0;
 uint8_t *src = args->value;
 int blkcnt;
 int valuelen;
 int nmap;
 int error;
 int offset = 0;

 trace_xfs_attr_rmtval_set(args);







 blkcnt = xfs_attr3_rmt_blocks(mp, args->rmtvaluelen);
 error = xfs_bmap_first_unused(args->trans, args->dp, blkcnt, &lfileoff,
         XFS_ATTR_FORK);
 if (error)
  return error;

 args->rmtblkno = lblkno = (xfs_dablk_t)lfileoff;
 args->rmtblkcnt = blkcnt;




 while (blkcnt > 0) {
  nmap = 1;
  error = xfs_bmapi_write(args->trans, dp, (xfs_fileoff_t)lblkno,
      blkcnt, XFS_BMAPI_ATTRFORK, args->total, &map,
      &nmap);
  if (error)
   return error;
  error = xfs_defer_finish(&args->trans);
  if (error)
   return error;

  ASSERT(nmap == 1);
  ASSERT((map.br_startblock != DELAYSTARTBLOCK) &&
         (map.br_startblock != HOLESTARTBLOCK));
  lblkno += map.br_blockcount;
  blkcnt -= map.br_blockcount;




  error = xfs_trans_roll_inode(&args->trans, dp);
  if (error)
   return error;
 }







 lblkno = args->rmtblkno;
 blkcnt = args->rmtblkcnt;
 valuelen = args->rmtvaluelen;
 while (valuelen > 0) {
  struct xfs_buf *bp;
  xfs_daddr_t dblkno;
  int dblkcnt;

  ASSERT(blkcnt > 0);

  nmap = 1;
  error = xfs_bmapi_read(dp, (xfs_fileoff_t)lblkno,
           blkcnt, &map, &nmap,
           XFS_BMAPI_ATTRFORK);
  if (error)
   return error;
  ASSERT(nmap == 1);
  ASSERT((map.br_startblock != DELAYSTARTBLOCK) &&
         (map.br_startblock != HOLESTARTBLOCK));

  dblkno = XFS_FSB_TO_DADDR(mp, map.br_startblock),
  dblkcnt = XFS_FSB_TO_BB(mp, map.br_blockcount);

  bp = xfs_buf_get(mp->m_ddev_targp, dblkno, dblkcnt);
  if (!bp)
   return -ENOMEM;
  bp->b_ops = &xfs_attr3_rmt_buf_ops;

  xfs_attr_rmtval_copyin(mp, bp, args->dp->i_ino, &offset,
           &valuelen, &src);

  error = xfs_bwrite(bp);
  xfs_buf_relse(bp);
  if (error)
   return error;



  lblkno += map.br_blockcount;
  blkcnt -= map.br_blockcount;
 }
 ASSERT(valuelen == 0);
 return 0;
}
