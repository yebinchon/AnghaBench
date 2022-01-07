
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_db_t ;
typedef int xfs_dablk_t ;
struct xfs_da_geometry {int blklog; int fsblog; } ;



__attribute__((used)) static inline xfs_dablk_t
xfs_dir2_db_to_da(struct xfs_da_geometry *geo, xfs_dir2_db_t db)
{
 return (xfs_dablk_t)(db << (geo->blklog - geo->fsblog));
}
