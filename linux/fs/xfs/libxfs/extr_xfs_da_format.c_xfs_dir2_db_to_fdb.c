
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_db_t ;
struct xfs_da_geometry {int dummy; } ;


 int XFS_DIR2_FREE_OFFSET ;
 int xfs_dir2_byte_to_db (struct xfs_da_geometry*,int ) ;
 int xfs_dir2_free_max_bests (struct xfs_da_geometry*) ;

__attribute__((used)) static xfs_dir2_db_t
xfs_dir2_db_to_fdb(struct xfs_da_geometry *geo, xfs_dir2_db_t db)
{
 return xfs_dir2_byte_to_db(geo, XFS_DIR2_FREE_OFFSET) +
   (db / xfs_dir2_free_max_bests(geo));
}
