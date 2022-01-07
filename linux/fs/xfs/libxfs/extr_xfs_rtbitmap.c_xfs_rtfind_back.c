
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_srtblock_t ;
typedef int xfs_rtword_t ;
typedef int xfs_rtblock_t ;
typedef int xfs_mount_t ;
struct TYPE_4__ {int* b_addr; } ;
typedef TYPE_1__ xfs_buf_t ;


 int XFS_BITTOBLOCK (int *,int) ;
 int XFS_BITTOWORD (int *,int) ;
 int XFS_BLOCKWMASK (int *) ;
 int XFS_NBWORD ;
 int XFS_RTHIBIT (int) ;
 int XFS_RTMAX (int ,int ) ;
 int xfs_rtbuf_get (int *,int *,int,int ,TYPE_1__**) ;
 int xfs_trans_brelse (int *,TYPE_1__*) ;

int
xfs_rtfind_back(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_rtblock_t start,
 xfs_rtblock_t limit,
 xfs_rtblock_t *rtblock)
{
 xfs_rtword_t *b;
 int bit;
 xfs_rtblock_t block;
 xfs_buf_t *bp;
 xfs_rtword_t *bufp;
 int error;
 xfs_rtblock_t firstbit;
 xfs_rtblock_t i;
 xfs_rtblock_t len;
 xfs_rtword_t mask;
 xfs_rtword_t want;
 xfs_rtword_t wdiff;
 int word;




 block = XFS_BITTOBLOCK(mp, start);
 error = xfs_rtbuf_get(mp, tp, block, 0, &bp);
 if (error) {
  return error;
 }
 bufp = bp->b_addr;



 word = XFS_BITTOWORD(mp, start);
 b = &bufp[word];
 bit = (int)(start & (XFS_NBWORD - 1));
 len = start - limit + 1;




 want = (*b & ((xfs_rtword_t)1 << bit)) ? -1 : 0;




 if (bit < XFS_NBWORD - 1) {




  firstbit = XFS_RTMAX((xfs_srtblock_t)(bit - len + 1), 0);
  mask = (((xfs_rtword_t)1 << (bit - firstbit + 1)) - 1) <<
   firstbit;




  if ((wdiff = (*b ^ want) & mask)) {



   xfs_trans_brelse(tp, bp);
   i = bit - XFS_RTHIBIT(wdiff);
   *rtblock = start - i + 1;
   return 0;
  }
  i = bit - firstbit + 1;




  if (--word == -1 && i < len) {



   xfs_trans_brelse(tp, bp);
   error = xfs_rtbuf_get(mp, tp, --block, 0, &bp);
   if (error) {
    return error;
   }
   bufp = bp->b_addr;
   word = XFS_BLOCKWMASK(mp);
   b = &bufp[word];
  } else {



   b--;
  }
 } else {



  i = 0;
 }




 while (len - i >= XFS_NBWORD) {



  if ((wdiff = *b ^ want)) {



   xfs_trans_brelse(tp, bp);
   i += XFS_NBWORD - 1 - XFS_RTHIBIT(wdiff);
   *rtblock = start - i + 1;
   return 0;
  }
  i += XFS_NBWORD;




  if (--word == -1 && i < len) {



   xfs_trans_brelse(tp, bp);
   error = xfs_rtbuf_get(mp, tp, --block, 0, &bp);
   if (error) {
    return error;
   }
   bufp = bp->b_addr;
   word = XFS_BLOCKWMASK(mp);
   b = &bufp[word];
  } else {



   b--;
  }
 }




 if (len - i) {




  firstbit = XFS_NBWORD - (len - i);
  mask = (((xfs_rtword_t)1 << (len - i)) - 1) << firstbit;



  if ((wdiff = (*b ^ want) & mask)) {



   xfs_trans_brelse(tp, bp);
   i += XFS_NBWORD - 1 - XFS_RTHIBIT(wdiff);
   *rtblock = start - i + 1;
   return 0;
  } else
   i = len;
 }



 xfs_trans_brelse(tp, bp);
 *rtblock = start - i + 1;
 return 0;
}
