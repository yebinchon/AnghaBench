
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_fileoff_t ;
typedef int xfs_daddr_t ;
typedef scalar_t__ xfs_dablk_t ;
typedef int uint8_t ;
struct xfs_mount {int m_ddev_targp; } ;
struct xfs_da_args {int rmtblkcnt; int flags; int rmtvaluelen; int valuelen; int trans; TYPE_1__* dp; int * value; scalar_t__ rmtblkno; } ;
struct xfs_buf {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; scalar_t__ br_blockcount; } ;
struct TYPE_2__ {int i_ino; struct xfs_mount* i_mount; } ;


 int ASSERT (int) ;
 int ATTR_KERNOVAL ;
 int ATTR_RMTVALUE_MAPSIZE ;
 scalar_t__ DELAYSTARTBLOCK ;
 scalar_t__ HOLESTARTBLOCK ;
 int XFS_BMAPI_ATTRFORK ;
 int XFS_FSB_TO_BB (struct xfs_mount*,scalar_t__) ;
 int XFS_FSB_TO_DADDR (struct xfs_mount*,scalar_t__) ;
 int trace_xfs_attr_rmtval_get (struct xfs_da_args*) ;
 int xfs_attr3_rmt_buf_ops ;
 int xfs_attr_rmtval_copyout (struct xfs_mount*,struct xfs_buf*,int ,int*,int*,int **) ;
 int xfs_bmapi_read (TYPE_1__*,int ,int,struct xfs_bmbt_irec*,int*,int ) ;
 int xfs_trans_brelse (int ,struct xfs_buf*) ;
 int xfs_trans_read_buf (struct xfs_mount*,int ,int ,int ,int,int ,struct xfs_buf**,int *) ;

int
xfs_attr_rmtval_get(
 struct xfs_da_args *args)
{
 struct xfs_bmbt_irec map[ATTR_RMTVALUE_MAPSIZE];
 struct xfs_mount *mp = args->dp->i_mount;
 struct xfs_buf *bp;
 xfs_dablk_t lblkno = args->rmtblkno;
 uint8_t *dst = args->value;
 int valuelen;
 int nmap;
 int error;
 int blkcnt = args->rmtblkcnt;
 int i;
 int offset = 0;

 trace_xfs_attr_rmtval_get(args);

 ASSERT(!(args->flags & ATTR_KERNOVAL));
 ASSERT(args->rmtvaluelen == args->valuelen);

 valuelen = args->rmtvaluelen;
 while (valuelen > 0) {
  nmap = ATTR_RMTVALUE_MAPSIZE;
  error = xfs_bmapi_read(args->dp, (xfs_fileoff_t)lblkno,
           blkcnt, map, &nmap,
           XFS_BMAPI_ATTRFORK);
  if (error)
   return error;
  ASSERT(nmap >= 1);

  for (i = 0; (i < nmap) && (valuelen > 0); i++) {
   xfs_daddr_t dblkno;
   int dblkcnt;

   ASSERT((map[i].br_startblock != DELAYSTARTBLOCK) &&
          (map[i].br_startblock != HOLESTARTBLOCK));
   dblkno = XFS_FSB_TO_DADDR(mp, map[i].br_startblock);
   dblkcnt = XFS_FSB_TO_BB(mp, map[i].br_blockcount);
   error = xfs_trans_read_buf(mp, args->trans,
         mp->m_ddev_targp,
         dblkno, dblkcnt, 0, &bp,
         &xfs_attr3_rmt_buf_ops);
   if (error)
    return error;

   error = xfs_attr_rmtval_copyout(mp, bp, args->dp->i_ino,
       &offset, &valuelen,
       &dst);
   xfs_trans_brelse(args->trans, bp);
   if (error)
    return error;


   lblkno += map[i].br_blockcount;
   blkcnt -= map[i].br_blockcount;
  }
 }
 ASSERT(valuelen == 0);
 return 0;
}
