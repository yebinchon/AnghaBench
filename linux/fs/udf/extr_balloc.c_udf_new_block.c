
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
typedef scalar_t__ udf_pblk_t ;
struct TYPE_3__ {int s_table; int s_bitmap; } ;
struct udf_part_map {int s_partition_flags; TYPE_1__ s_uspace; } ;
struct super_block {int s_blocksize; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {struct udf_part_map* s_partmaps; } ;


 int EIO ;
 int UDF_PART_FLAG_UNALLOC_BITMAP ;
 int UDF_PART_FLAG_UNALLOC_TABLE ;
 TYPE_2__* UDF_SB (struct super_block*) ;
 int inode_add_bytes (struct inode*,int ) ;
 scalar_t__ udf_bitmap_new_block (struct super_block*,int ,size_t,int ,int*) ;
 scalar_t__ udf_table_new_block (struct super_block*,int ,size_t,int ,int*) ;

inline udf_pblk_t udf_new_block(struct super_block *sb,
    struct inode *inode,
    uint16_t partition, uint32_t goal, int *err)
{
 struct udf_part_map *map = &UDF_SB(sb)->s_partmaps[partition];
 udf_pblk_t block;

 if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_BITMAP)
  block = udf_bitmap_new_block(sb,
          map->s_uspace.s_bitmap,
          partition, goal, err);
 else if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_TABLE)
  block = udf_table_new_block(sb,
         map->s_uspace.s_table,
         partition, goal, err);
 else {
  *err = -EIO;
  return 0;
 }
 if (inode && block)
  inode_add_bytes(inode, sb->s_blocksize);
 return block;
}
