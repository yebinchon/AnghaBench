
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct xfs_dir2_data_entry {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR3_FT_MAX ;

__attribute__((used)) static void
xfs_dir2_data_put_ftype(
 struct xfs_dir2_data_entry *dep,
 uint8_t ftype)
{
 ASSERT(ftype < XFS_DIR3_FT_MAX);
}
