
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_rtword_t ;
typedef int xfs_rtblock_t ;
typedef int xfs_mount_t ;
typedef int xfs_extlen_t ;
struct TYPE_4__ {int* b_addr; } ;
typedef TYPE_1__ xfs_buf_t ;
typedef int uint ;


 int XFS_BITTOBLOCK (int *,int) ;
 int XFS_BITTOWORD (int *,int) ;
 int XFS_BLOCKWSIZE (int *) ;
 int XFS_NBWORD ;
 int XFS_RTMIN (int,int) ;
 int xfs_rtbuf_get (int *,int *,int,int ,TYPE_1__**) ;
 int xfs_trans_log_buf (int *,TYPE_1__*,int ,int ) ;

int
xfs_rtmodify_range(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_rtblock_t start,
 xfs_extlen_t len,
 int val)
{
 xfs_rtword_t *b;
 int bit;
 xfs_rtblock_t block;
 xfs_buf_t *bp;
 xfs_rtword_t *bufp;
 int error;
 xfs_rtword_t *first;
 int i;
 int lastbit;
 xfs_rtword_t mask;
 int word;




 block = XFS_BITTOBLOCK(mp, start);



 error = xfs_rtbuf_get(mp, tp, block, 0, &bp);
 if (error) {
  return error;
 }
 bufp = bp->b_addr;



 word = XFS_BITTOWORD(mp, start);
 first = b = &bufp[word];
 bit = (int)(start & (XFS_NBWORD - 1));



 val = -val;




 if (bit) {



  lastbit = XFS_RTMIN(bit + len, XFS_NBWORD);
  mask = (((xfs_rtword_t)1 << (lastbit - bit)) - 1) << bit;



  if (val)
   *b |= mask;
  else
   *b &= ~mask;
  i = lastbit - bit;




  if (++word == XFS_BLOCKWSIZE(mp) && i < len) {




   xfs_trans_log_buf(tp, bp,
    (uint)((char *)first - (char *)bufp),
    (uint)((char *)b - (char *)bufp));
   error = xfs_rtbuf_get(mp, tp, ++block, 0, &bp);
   if (error) {
    return error;
   }
   first = b = bufp = bp->b_addr;
   word = 0;
  } else {



   b++;
  }
 } else {



  i = 0;
 }




 while (len - i >= XFS_NBWORD) {



  *b = val;
  i += XFS_NBWORD;




  if (++word == XFS_BLOCKWSIZE(mp) && i < len) {




   xfs_trans_log_buf(tp, bp,
    (uint)((char *)first - (char *)bufp),
    (uint)((char *)b - (char *)bufp));
   error = xfs_rtbuf_get(mp, tp, ++block, 0, &bp);
   if (error) {
    return error;
   }
   first = b = bufp = bp->b_addr;
   word = 0;
  } else {



   b++;
  }
 }




 if ((lastbit = len - i)) {



  mask = ((xfs_rtword_t)1 << lastbit) - 1;



  if (val)
   *b |= mask;
  else
   *b &= ~mask;
  b++;
 }



 if (b > first)
  xfs_trans_log_buf(tp, bp, (uint)((char *)first - (char *)bufp),
   (uint)((char *)b - (char *)bufp - 1));
 return 0;
}
