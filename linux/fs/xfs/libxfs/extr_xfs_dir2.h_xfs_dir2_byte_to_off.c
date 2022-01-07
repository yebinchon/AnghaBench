
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_off_t ;
typedef int xfs_dir2_data_aoff_t ;
struct xfs_da_geometry {int blksize; } ;



__attribute__((used)) static inline xfs_dir2_data_aoff_t
xfs_dir2_byte_to_off(struct xfs_da_geometry *geo, xfs_dir2_off_t by)
{
 return (xfs_dir2_data_aoff_t)(by & (geo->blksize - 1));
}
