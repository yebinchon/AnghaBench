
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_off_t ;
typedef scalar_t__ xfs_dir2_dataptr_t ;


 int XFS_DIR2_DATA_ALIGN_LOG ;

__attribute__((used)) static inline xfs_dir2_off_t
xfs_dir2_dataptr_to_byte(xfs_dir2_dataptr_t dp)
{
 return (xfs_dir2_off_t)dp << XFS_DIR2_DATA_ALIGN_LOG;
}
