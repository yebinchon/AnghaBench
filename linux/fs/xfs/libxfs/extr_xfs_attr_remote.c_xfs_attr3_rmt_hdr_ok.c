
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_ino_t ;
typedef int * xfs_failaddr_t ;
typedef scalar_t__ xfs_daddr_t ;
typedef scalar_t__ uint32_t ;
struct xfs_attr3_rmt_hdr {int rm_owner; int rm_bytes; int rm_offset; int rm_blkno; } ;


 int * __this_address ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;

__attribute__((used)) static xfs_failaddr_t
xfs_attr3_rmt_hdr_ok(
 void *ptr,
 xfs_ino_t ino,
 uint32_t offset,
 uint32_t size,
 xfs_daddr_t bno)
{
 struct xfs_attr3_rmt_hdr *rmt = ptr;

 if (bno != be64_to_cpu(rmt->rm_blkno))
  return __this_address;
 if (offset != be32_to_cpu(rmt->rm_offset))
  return __this_address;
 if (size != be32_to_cpu(rmt->rm_bytes))
  return __this_address;
 if (ino != be64_to_cpu(rmt->rm_owner))
  return __this_address;


 return ((void*)0);
}
