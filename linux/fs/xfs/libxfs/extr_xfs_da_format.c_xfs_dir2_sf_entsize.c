
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_sf_hdr {scalar_t__ i8count; } ;
struct xfs_dir2_sf_entry {int dummy; } ;


 scalar_t__ XFS_INO32_SIZE ;
 scalar_t__ XFS_INO64_SIZE ;

__attribute__((used)) static int
xfs_dir2_sf_entsize(
 struct xfs_dir2_sf_hdr *hdr,
 int len)
{
 int count = sizeof(struct xfs_dir2_sf_entry);

 count += len;
 count += hdr->i8count ? XFS_INO64_SIZE : XFS_INO32_SIZE;
 return count;
}
