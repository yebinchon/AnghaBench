
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_failaddr_t ;
struct TYPE_2__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_dir3_blk_hdr {int lsn; int blkno; int uuid; int magic; } ;
struct xfs_buf {scalar_t__ b_bn; struct xfs_dir3_blk_hdr* b_addr; struct xfs_mount* b_mount; } ;


 int __this_address ;
 int __xfs_dir3_data_check (int *,struct xfs_buf*) ;
 scalar_t__ be64_to_cpu (int ) ;
 int uuid_equal (int *,int *) ;
 int xfs_log_check_lsn (struct xfs_mount*,scalar_t__) ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_1__*) ;
 int xfs_verify_magic (struct xfs_buf*,int ) ;

__attribute__((used)) static xfs_failaddr_t
xfs_dir3_block_verify(
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_dir3_blk_hdr *hdr3 = bp->b_addr;

 if (!xfs_verify_magic(bp, hdr3->magic))
  return __this_address;

 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  if (!uuid_equal(&hdr3->uuid, &mp->m_sb.sb_meta_uuid))
   return __this_address;
  if (be64_to_cpu(hdr3->blkno) != bp->b_bn)
   return __this_address;
  if (!xfs_log_check_lsn(mp, be64_to_cpu(hdr3->lsn)))
   return __this_address;
 }
 return __xfs_dir3_data_check(((void*)0), bp);
}
