
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct udf_part_map {scalar_t__ s_partition_len; } ;
struct super_block {int s_blocksize; } ;
struct spaceBitmapDesc {int dummy; } ;
struct TYPE_2__ {struct udf_part_map* s_partmaps; } ;


 int DIV_ROUND_UP (scalar_t__,int) ;
 TYPE_1__* UDF_SB (struct super_block*) ;

int udf_compute_nr_groups(struct super_block *sb, u32 partition)
{
 struct udf_part_map *map = &UDF_SB(sb)->s_partmaps[partition];
 return DIV_ROUND_UP(map->s_partition_len +
       (sizeof(struct spaceBitmapDesc) << 3),
       sb->s_blocksize * 8);
}
