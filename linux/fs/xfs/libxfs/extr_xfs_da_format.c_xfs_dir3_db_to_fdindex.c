
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_db_t ;
struct xfs_da_geometry {int dummy; } ;


 int xfs_dir3_free_max_bests (struct xfs_da_geometry*) ;

__attribute__((used)) static int
xfs_dir3_db_to_fdindex(struct xfs_da_geometry *geo, xfs_dir2_db_t db)
{
 return db % xfs_dir3_free_max_bests(geo);
}
