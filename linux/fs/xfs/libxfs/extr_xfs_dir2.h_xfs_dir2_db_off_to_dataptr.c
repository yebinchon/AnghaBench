
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_db_t ;
typedef int xfs_dir2_dataptr_t ;
typedef int xfs_dir2_data_aoff_t ;
struct xfs_da_geometry {int dummy; } ;


 int xfs_dir2_byte_to_dataptr (int ) ;
 int xfs_dir2_db_off_to_byte (struct xfs_da_geometry*,int ,int ) ;

__attribute__((used)) static inline xfs_dir2_dataptr_t
xfs_dir2_db_off_to_dataptr(struct xfs_da_geometry *geo, xfs_dir2_db_t db,
      xfs_dir2_data_aoff_t o)
{
 return xfs_dir2_byte_to_dataptr(xfs_dir2_db_off_to_byte(geo, db, o));
}
