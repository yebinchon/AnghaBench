
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_data_free {int length; int offset; } ;
typedef struct xfs_dir2_data_free xfs_dir2_data_free_t ;
struct xfs_dir2_data_unused {int length; } ;
struct xfs_dir2_data_hdr {scalar_t__ magic; } ;


 int ASSERT (int) ;
 int XFS_DIR2_BLOCK_MAGIC ;
 int XFS_DIR2_DATA_MAGIC ;
 int XFS_DIR3_BLOCK_MAGIC ;
 int XFS_DIR3_DATA_MAGIC ;
 scalar_t__ be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 scalar_t__ cpu_to_be32 (int ) ;

xfs_dir2_data_free_t *
xfs_dir2_data_freeinsert(
 struct xfs_dir2_data_hdr *hdr,
 struct xfs_dir2_data_free *dfp,
 struct xfs_dir2_data_unused *dup,
 int *loghead)
{
 xfs_dir2_data_free_t new;

 ASSERT(hdr->magic == cpu_to_be32(XFS_DIR2_DATA_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR2_BLOCK_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR3_DATA_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR3_BLOCK_MAGIC));

 new.length = dup->length;
 new.offset = cpu_to_be16((char *)dup - (char *)hdr);




 if (be16_to_cpu(new.length) > be16_to_cpu(dfp[0].length)) {
  dfp[2] = dfp[1];
  dfp[1] = dfp[0];
  dfp[0] = new;
  *loghead = 1;
  return &dfp[0];
 }
 if (be16_to_cpu(new.length) > be16_to_cpu(dfp[1].length)) {
  dfp[2] = dfp[1];
  dfp[1] = new;
  *loghead = 1;
  return &dfp[1];
 }
 if (be16_to_cpu(new.length) > be16_to_cpu(dfp[2].length)) {
  dfp[2] = new;
  *loghead = 1;
  return &dfp[2];
 }
 return ((void*)0);
}
