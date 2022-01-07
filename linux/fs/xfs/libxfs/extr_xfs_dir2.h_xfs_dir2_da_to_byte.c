
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_off_t ;
typedef int xfs_dablk_t ;
struct xfs_da_geometry {int dummy; } ;


 int xfs_dir2_da_to_db (struct xfs_da_geometry*,int ) ;
 int xfs_dir2_db_off_to_byte (struct xfs_da_geometry*,int ,int ) ;

__attribute__((used)) static inline xfs_dir2_off_t
xfs_dir2_da_to_byte(struct xfs_da_geometry *geo, xfs_dablk_t da)
{
 return xfs_dir2_db_off_to_byte(geo, xfs_dir2_da_to_db(geo, da), 0);
}
