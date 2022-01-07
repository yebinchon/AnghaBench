
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_db_t ;
typedef int xfs_dir2_dataptr_t ;
struct xfs_da_geometry {int dummy; } ;


 int xfs_dir2_byte_to_db (struct xfs_da_geometry*,int ) ;
 int xfs_dir2_dataptr_to_byte (int ) ;

__attribute__((used)) static inline xfs_dir2_db_t
xfs_dir2_dataptr_to_db(struct xfs_da_geometry *geo, xfs_dir2_dataptr_t dp)
{
 return xfs_dir2_byte_to_db(geo, xfs_dir2_dataptr_to_byte(dp));
}
