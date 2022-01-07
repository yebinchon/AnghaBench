
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_failaddr_t ;
typedef int xfs_daddr_t ;
struct xfs_mount {int m_sb; TYPE_1__* m_attr_geo; } ;
struct xfs_buf {char* b_addr; int b_length; int b_bn; struct xfs_mount* b_mount; } ;
struct TYPE_2__ {int blksize; } ;


 int ASSERT (int) ;
 int BBTOB (int ) ;
 scalar_t__ BTOBB (int) ;
 int EFSBADCRC ;
 int EFSCORRUPTED ;
 int XFS_ATTR3_RMT_CRC_OFF ;
 int __this_address ;
 int xfs_attr3_rmt_verify (struct xfs_mount*,struct xfs_buf*,char*,int,int ) ;
 int xfs_sb_version_hascrc (int *) ;
 int xfs_verify_cksum (char*,int,int ) ;

__attribute__((used)) static int
__xfs_attr3_rmt_read_verify(
 struct xfs_buf *bp,
 bool check_crc,
 xfs_failaddr_t *failaddr)
{
 struct xfs_mount *mp = bp->b_mount;
 char *ptr;
 int len;
 xfs_daddr_t bno;
 int blksize = mp->m_attr_geo->blksize;


 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return 0;

 ptr = bp->b_addr;
 bno = bp->b_bn;
 len = BBTOB(bp->b_length);
 ASSERT(len >= blksize);

 while (len > 0) {
  if (check_crc &&
      !xfs_verify_cksum(ptr, blksize, XFS_ATTR3_RMT_CRC_OFF)) {
   *failaddr = __this_address;
   return -EFSBADCRC;
  }
  *failaddr = xfs_attr3_rmt_verify(mp, bp, ptr, blksize, bno);
  if (*failaddr)
   return -EFSCORRUPTED;
  len -= blksize;
  ptr += blksize;
  bno += BTOBB(blksize);
 }

 if (len != 0) {
  *failaddr = __this_address;
  return -EFSCORRUPTED;
 }

 return 0;
}
