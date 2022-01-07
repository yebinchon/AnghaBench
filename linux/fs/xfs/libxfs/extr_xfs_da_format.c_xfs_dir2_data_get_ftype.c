
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct xfs_dir2_data_entry {int dummy; } ;


 int XFS_DIR3_FT_UNKNOWN ;

__attribute__((used)) static uint8_t
xfs_dir2_data_get_ftype(
 struct xfs_dir2_data_entry *dep)
{
 return XFS_DIR3_FT_UNKNOWN;
}
