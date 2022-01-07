
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udf_sb_info {unsigned int s_partition; struct udf_part_map* s_partmaps; TYPE_1__* s_lvid_bh; } ;
struct TYPE_4__ {int s_table; int s_bitmap; } ;
struct udf_part_map {int s_partition_flags; TYPE_2__ s_uspace; } ;
struct super_block {int dummy; } ;
struct logicalVolIntegrityDesc {int * freeSpaceTable; int numOfPartitions; } ;
struct TYPE_3__ {scalar_t__ b_data; } ;


 int UDF_PART_FLAG_UNALLOC_BITMAP ;
 int UDF_PART_FLAG_UNALLOC_TABLE ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ udf_count_free_bitmap (struct super_block*,int ) ;
 scalar_t__ udf_count_free_table (struct super_block*,int ) ;

__attribute__((used)) static unsigned int udf_count_free(struct super_block *sb)
{
 unsigned int accum = 0;
 struct udf_sb_info *sbi;
 struct udf_part_map *map;

 sbi = UDF_SB(sb);
 if (sbi->s_lvid_bh) {
  struct logicalVolIntegrityDesc *lvid =
   (struct logicalVolIntegrityDesc *)
   sbi->s_lvid_bh->b_data;
  if (le32_to_cpu(lvid->numOfPartitions) > sbi->s_partition) {
   accum = le32_to_cpu(
     lvid->freeSpaceTable[sbi->s_partition]);
   if (accum == 0xFFFFFFFF)
    accum = 0;
  }
 }

 if (accum)
  return accum;

 map = &sbi->s_partmaps[sbi->s_partition];
 if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_BITMAP) {
  accum += udf_count_free_bitmap(sb,
            map->s_uspace.s_bitmap);
 }
 if (accum)
  return accum;

 if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_TABLE) {
  accum += udf_count_free_table(sb,
           map->s_uspace.s_table);
 }
 return accum;
}
