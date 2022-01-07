
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_block_layout {scalar_t__ bl_scsi_layout; } ;
typedef int __be32 ;


 size_t PNFS_BLOCK_EXTENT_SIZE ;
 size_t PNFS_SCSI_RANGE_SIZE ;

__attribute__((used)) static size_t ext_tree_layoutupdate_size(struct pnfs_block_layout *bl, size_t count)
{
 if (bl->bl_scsi_layout)
  return sizeof(__be32) + PNFS_SCSI_RANGE_SIZE * count;
 else
  return sizeof(__be32) + PNFS_BLOCK_EXTENT_SIZE * count;
}
