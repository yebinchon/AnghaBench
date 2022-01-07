
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_3__ {int s_table; int s_bitmap; } ;
struct udf_part_map {int s_partition_flags; TYPE_1__ s_uspace; } ;
struct super_block {int s_blocksize_bits; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {struct udf_part_map* s_partmaps; } ;


 int UDF_PART_FLAG_UNALLOC_BITMAP ;
 int UDF_PART_FLAG_UNALLOC_TABLE ;
 TYPE_2__* UDF_SB (struct super_block*) ;
 int inode_add_bytes (struct inode*,int) ;
 int udf_bitmap_prealloc_blocks (struct super_block*,int ,size_t,int ,int ) ;
 int udf_table_prealloc_blocks (struct super_block*,int ,size_t,int ,int ) ;

inline int udf_prealloc_blocks(struct super_block *sb,
          struct inode *inode,
          uint16_t partition, uint32_t first_block,
          uint32_t block_count)
{
 struct udf_part_map *map = &UDF_SB(sb)->s_partmaps[partition];
 int allocated;

 if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_BITMAP)
  allocated = udf_bitmap_prealloc_blocks(sb,
             map->s_uspace.s_bitmap,
             partition, first_block,
             block_count);
 else if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_TABLE)
  allocated = udf_table_prealloc_blocks(sb,
            map->s_uspace.s_table,
            partition, first_block,
            block_count);
 else
  return 0;

 if (inode && allocated > 0)
  inode_add_bytes(inode, allocated << sb->s_blocksize_bits);
 return allocated;
}
