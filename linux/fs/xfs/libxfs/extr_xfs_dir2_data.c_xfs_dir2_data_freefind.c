
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_data_free {int offset; int length; } ;
typedef struct xfs_dir2_data_free xfs_dir2_data_free_t ;
typedef scalar_t__ xfs_dir2_data_aoff_t ;
struct xfs_dir2_data_unused {int length; } ;
struct xfs_dir2_data_hdr {int dummy; } ;


 int XFS_DIR2_DATA_FD_COUNT ;
 scalar_t__ be16_to_cpu (int ) ;

xfs_dir2_data_free_t *
xfs_dir2_data_freefind(
 struct xfs_dir2_data_hdr *hdr,
 struct xfs_dir2_data_free *bf,
 struct xfs_dir2_data_unused *dup)
{
 xfs_dir2_data_free_t *dfp;
 xfs_dir2_data_aoff_t off;

 off = (xfs_dir2_data_aoff_t)((char *)dup - (char *)hdr);





 if (be16_to_cpu(dup->length) <
     be16_to_cpu(bf[XFS_DIR2_DATA_FD_COUNT - 1].length))
  return ((void*)0);



 for (dfp = &bf[0]; dfp < &bf[XFS_DIR2_DATA_FD_COUNT]; dfp++) {
  if (!dfp->offset)
   return ((void*)0);
  if (be16_to_cpu(dfp->offset) == off)
   return dfp;
 }



 return ((void*)0);
}
