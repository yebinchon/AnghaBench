
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_fileoff_t ;
typedef int xfs_daddr_t ;
typedef scalar_t__ xfs_dablk_t ;
struct xfs_mount {int m_ddev_targp; } ;
struct xfs_da_args {int rmtblkcnt; TYPE_1__* dp; int trans; scalar_t__ rmtblkno; } ;
struct xfs_buf {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; scalar_t__ br_blockcount; } ;
struct TYPE_4__ {struct xfs_mount* i_mount; } ;


 int ASSERT (int) ;
 scalar_t__ DELAYSTARTBLOCK ;
 scalar_t__ HOLESTARTBLOCK ;
 int XBF_TRYLOCK ;
 int XFS_BMAPI_ATTRFORK ;
 int XFS_FSB_TO_BB (struct xfs_mount*,scalar_t__) ;
 int XFS_FSB_TO_DADDR (struct xfs_mount*,scalar_t__) ;
 int trace_xfs_attr_rmtval_remove (struct xfs_da_args*) ;
 int xfs_bmapi_read (TYPE_1__*,int ,int,struct xfs_bmbt_irec*,int*,int ) ;
 struct xfs_buf* xfs_buf_incore (int ,int ,int,int ) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_buf_stale (struct xfs_buf*) ;
 int xfs_bunmapi (int ,TYPE_1__*,scalar_t__,int,int ,int,int*) ;
 int xfs_defer_finish (int *) ;
 int xfs_trans_roll_inode (int *,TYPE_1__*) ;

int
xfs_attr_rmtval_remove(
 struct xfs_da_args *args)
{
 struct xfs_mount *mp = args->dp->i_mount;
 xfs_dablk_t lblkno;
 int blkcnt;
 int error;
 int done;

 trace_xfs_attr_rmtval_remove(args);




 lblkno = args->rmtblkno;
 blkcnt = args->rmtblkcnt;
 while (blkcnt > 0) {
  struct xfs_bmbt_irec map;
  struct xfs_buf *bp;
  xfs_daddr_t dblkno;
  int dblkcnt;
  int nmap;




  nmap = 1;
  error = xfs_bmapi_read(args->dp, (xfs_fileoff_t)lblkno,
           blkcnt, &map, &nmap, XFS_BMAPI_ATTRFORK);
  if (error)
   return error;
  ASSERT(nmap == 1);
  ASSERT((map.br_startblock != DELAYSTARTBLOCK) &&
         (map.br_startblock != HOLESTARTBLOCK));

  dblkno = XFS_FSB_TO_DADDR(mp, map.br_startblock),
  dblkcnt = XFS_FSB_TO_BB(mp, map.br_blockcount);




  bp = xfs_buf_incore(mp->m_ddev_targp, dblkno, dblkcnt, XBF_TRYLOCK);
  if (bp) {
   xfs_buf_stale(bp);
   xfs_buf_relse(bp);
   bp = ((void*)0);
  }

  lblkno += map.br_blockcount;
  blkcnt -= map.br_blockcount;
 }




 lblkno = args->rmtblkno;
 blkcnt = args->rmtblkcnt;
 done = 0;
 while (!done) {
  error = xfs_bunmapi(args->trans, args->dp, lblkno, blkcnt,
        XFS_BMAPI_ATTRFORK, 1, &done);
  if (error)
   return error;
  error = xfs_defer_finish(&args->trans);
  if (error)
   return error;




  error = xfs_trans_roll_inode(&args->trans, args->dp);
  if (error)
   return error;
 }
 return 0;
}
