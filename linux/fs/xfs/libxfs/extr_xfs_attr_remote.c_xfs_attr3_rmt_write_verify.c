
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_failaddr_t ;
typedef int xfs_daddr_t ;
struct xfs_mount {int m_sb; TYPE_1__* m_attr_geo; } ;
struct xfs_buf {char* b_addr; int b_length; int b_bn; struct xfs_mount* b_mount; } ;
struct xfs_attr3_rmt_hdr {scalar_t__ rm_lsn; } ;
struct TYPE_2__ {int blksize; } ;


 int ASSERT (int) ;
 int BBTOB (int ) ;
 scalar_t__ BTOBB (int) ;
 int EFSCORRUPTED ;
 int NULLCOMMITLSN ;
 int XFS_ATTR3_RMT_CRC_OFF ;
 scalar_t__ __this_address ;
 scalar_t__ cpu_to_be64 (int ) ;
 scalar_t__ xfs_attr3_rmt_verify (struct xfs_mount*,struct xfs_buf*,char*,int,int ) ;
 int xfs_sb_version_hascrc (int *) ;
 int xfs_update_cksum (char*,int,int ) ;
 int xfs_verifier_error (struct xfs_buf*,int ,scalar_t__) ;

__attribute__((used)) static void
xfs_attr3_rmt_write_verify(
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = bp->b_mount;
 xfs_failaddr_t fa;
 int blksize = mp->m_attr_geo->blksize;
 char *ptr;
 int len;
 xfs_daddr_t bno;


 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return;

 ptr = bp->b_addr;
 bno = bp->b_bn;
 len = BBTOB(bp->b_length);
 ASSERT(len >= blksize);

 while (len > 0) {
  struct xfs_attr3_rmt_hdr *rmt = (struct xfs_attr3_rmt_hdr *)ptr;

  fa = xfs_attr3_rmt_verify(mp, bp, ptr, blksize, bno);
  if (fa) {
   xfs_verifier_error(bp, -EFSCORRUPTED, fa);
   return;
  }





  if (rmt->rm_lsn != cpu_to_be64(NULLCOMMITLSN)) {
   xfs_verifier_error(bp, -EFSCORRUPTED, __this_address);
   return;
  }
  xfs_update_cksum(ptr, blksize, XFS_ATTR3_RMT_CRC_OFF);

  len -= blksize;
  ptr += blksize;
  bno += BTOBB(blksize);
 }

 if (len != 0)
  xfs_verifier_error(bp, -EFSCORRUPTED, __this_address);
}
