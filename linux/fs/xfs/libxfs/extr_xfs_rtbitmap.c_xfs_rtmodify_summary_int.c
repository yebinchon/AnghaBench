
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_suminfo_t ;
typedef size_t xfs_rtblock_t ;
struct TYPE_13__ {int* m_rsum_cache; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef scalar_t__ xfs_fsblock_t ;
struct TYPE_14__ {scalar_t__ b_addr; } ;
typedef TYPE_2__ xfs_buf_t ;
typedef scalar_t__ uint ;


 int XFS_SUMOFFS (TYPE_1__*,int,size_t) ;
 scalar_t__ XFS_SUMOFFSTOBLOCK (TYPE_1__*,int) ;
 int* XFS_SUMPTR (TYPE_1__*,TYPE_2__*,int) ;
 int xfs_rtbuf_get (TYPE_1__*,int *,scalar_t__,int,TYPE_2__**) ;
 int xfs_trans_brelse (int *,TYPE_2__*) ;
 int xfs_trans_log_buf (int *,TYPE_2__*,scalar_t__,scalar_t__) ;

int
xfs_rtmodify_summary_int(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 int log,
 xfs_rtblock_t bbno,
 int delta,
 xfs_buf_t **rbpp,
 xfs_fsblock_t *rsb,
 xfs_suminfo_t *sum)
{
 xfs_buf_t *bp;
 int error;
 xfs_fsblock_t sb;
 int so;
 xfs_suminfo_t *sp;




 so = XFS_SUMOFFS(mp, log, bbno);



 sb = XFS_SUMOFFSTOBLOCK(mp, so);



 if (*rbpp && *rsb == sb)
  bp = *rbpp;



 else {



  if (*rbpp)
   xfs_trans_brelse(tp, *rbpp);
  error = xfs_rtbuf_get(mp, tp, sb, 1, &bp);
  if (error) {
   return error;
  }



  *rbpp = bp;
  *rsb = sb;
 }



 sp = XFS_SUMPTR(mp, bp, so);
 if (delta) {
  uint first = (uint)((char *)sp - (char *)bp->b_addr);

  *sp += delta;
  if (mp->m_rsum_cache) {
   if (*sp == 0 && log == mp->m_rsum_cache[bbno])
    mp->m_rsum_cache[bbno]++;
   if (*sp != 0 && log < mp->m_rsum_cache[bbno])
    mp->m_rsum_cache[bbno] = log;
  }
  xfs_trans_log_buf(tp, bp, first, first + sizeof(*sp) - 1);
 }
 if (sum)
  *sum = *sp;
 return 0;
}
