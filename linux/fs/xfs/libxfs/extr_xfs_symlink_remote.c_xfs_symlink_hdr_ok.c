
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_ino_t ;
typedef scalar_t__ uint32_t ;
struct xfs_dsymlink_hdr {int sl_owner; int sl_bytes; int sl_offset; } ;
struct xfs_buf {struct xfs_dsymlink_hdr* b_addr; } ;


 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;

bool
xfs_symlink_hdr_ok(
 xfs_ino_t ino,
 uint32_t offset,
 uint32_t size,
 struct xfs_buf *bp)
{
 struct xfs_dsymlink_hdr *dsl = bp->b_addr;

 if (offset != be32_to_cpu(dsl->sl_offset))
  return 0;
 if (size != be32_to_cpu(dsl->sl_bytes))
  return 0;
 if (ino != be64_to_cpu(dsl->sl_owner))
  return 0;


 return 1;
}
