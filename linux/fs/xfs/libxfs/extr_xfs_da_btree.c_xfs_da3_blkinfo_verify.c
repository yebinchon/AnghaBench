
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
struct TYPE_2__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_da_blkinfo {int magic; } ;
struct xfs_da3_blkinfo {int lsn; int blkno; int uuid; struct xfs_da_blkinfo hdr; } ;
struct xfs_buf {scalar_t__ b_bn; struct xfs_mount* b_mount; } ;


 int * __this_address ;
 scalar_t__ be64_to_cpu (int ) ;
 int uuid_equal (int *,int *) ;
 int xfs_log_check_lsn (struct xfs_mount*,scalar_t__) ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_1__*) ;
 int xfs_verify_magic16 (struct xfs_buf*,int ) ;

xfs_failaddr_t
xfs_da3_blkinfo_verify(
 struct xfs_buf *bp,
 struct xfs_da3_blkinfo *hdr3)
{
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_da_blkinfo *hdr = &hdr3->hdr;

 if (!xfs_verify_magic16(bp, hdr->magic))
  return __this_address;

 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  if (!uuid_equal(&hdr3->uuid, &mp->m_sb.sb_meta_uuid))
   return __this_address;
  if (be64_to_cpu(hdr3->blkno) != bp->b_bn)
   return __this_address;
  if (!xfs_log_check_lsn(mp, be64_to_cpu(hdr3->lsn)))
   return __this_address;
 }

 return ((void*)0);
}
