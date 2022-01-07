
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_sf_hdr {int dummy; } ;


 int XFS_INO64_DIFF ;

__attribute__((used)) static inline int xfs_dir2_sf_hdr_size(int i8count)
{
 return sizeof(struct xfs_dir2_sf_hdr) -
  (i8count == 0) * XFS_INO64_DIFF;
}
