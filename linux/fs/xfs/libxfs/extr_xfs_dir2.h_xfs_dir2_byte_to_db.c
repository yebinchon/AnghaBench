
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_off_t ;
typedef int xfs_dir2_db_t ;
struct xfs_da_geometry {int blklog; } ;



__attribute__((used)) static inline xfs_dir2_db_t
xfs_dir2_byte_to_db(struct xfs_da_geometry *geo, xfs_dir2_off_t by)
{
 return (xfs_dir2_db_t)(by >> geo->blklog);
}
