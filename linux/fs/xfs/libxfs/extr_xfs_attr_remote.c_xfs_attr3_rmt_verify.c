
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
typedef scalar_t__ xfs_daddr_t ;
struct TYPE_2__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_attr3_rmt_hdr {scalar_t__ rm_owner; int rm_bytes; int rm_offset; int rm_blkno; int rm_uuid; int rm_magic; } ;


 int XFS_XATTR_SIZE_MAX ;
 int * __this_address ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int uuid_equal (int *,int *) ;
 int xfs_sb_version_hascrc (TYPE_1__*) ;
 int xfs_verify_magic (struct xfs_buf*,int ) ;

__attribute__((used)) static xfs_failaddr_t
xfs_attr3_rmt_verify(
 struct xfs_mount *mp,
 struct xfs_buf *bp,
 void *ptr,
 int fsbsize,
 xfs_daddr_t bno)
{
 struct xfs_attr3_rmt_hdr *rmt = ptr;

 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return __this_address;
 if (!xfs_verify_magic(bp, rmt->rm_magic))
  return __this_address;
 if (!uuid_equal(&rmt->rm_uuid, &mp->m_sb.sb_meta_uuid))
  return __this_address;
 if (be64_to_cpu(rmt->rm_blkno) != bno)
  return __this_address;
 if (be32_to_cpu(rmt->rm_bytes) > fsbsize - sizeof(*rmt))
  return __this_address;
 if (be32_to_cpu(rmt->rm_offset) +
    be32_to_cpu(rmt->rm_bytes) > XFS_XATTR_SIZE_MAX)
  return __this_address;
 if (rmt->rm_owner == 0)
  return __this_address;

 return ((void*)0);
}
