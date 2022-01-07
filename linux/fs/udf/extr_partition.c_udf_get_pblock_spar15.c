
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
typedef int u32 ;
struct udf_sparing_data {int s_packet_len; TYPE_2__** s_spar_map; } ;
struct udf_sb_info {struct udf_part_map* s_partmaps; } ;
struct TYPE_3__ {struct udf_sparing_data s_sparing; } ;
struct udf_part_map {int s_partition_root; TYPE_1__ s_type_specific; } ;
struct super_block {int dummy; } ;
struct sparingTable {struct sparingEntry* mapEntry; int reallocationTableLen; } ;
struct sparingEntry {int mappedLocation; int origLocation; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

uint32_t udf_get_pblock_spar15(struct super_block *sb, uint32_t block,
          uint16_t partition, uint32_t offset)
{
 int i;
 struct sparingTable *st = ((void*)0);
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct udf_part_map *map;
 uint32_t packet;
 struct udf_sparing_data *sdata;

 map = &sbi->s_partmaps[partition];
 sdata = &map->s_type_specific.s_sparing;
 packet = (block + offset) & ~(sdata->s_packet_len - 1);

 for (i = 0; i < 4; i++) {
  if (sdata->s_spar_map[i] != ((void*)0)) {
   st = (struct sparingTable *)
     sdata->s_spar_map[i]->b_data;
   break;
  }
 }

 if (st) {
  for (i = 0; i < le16_to_cpu(st->reallocationTableLen); i++) {
   struct sparingEntry *entry = &st->mapEntry[i];
   u32 origLoc = le32_to_cpu(entry->origLocation);
   if (origLoc >= 0xFFFFFFF0)
    break;
   else if (origLoc == packet)
    return le32_to_cpu(entry->mappedLocation) +
     ((block + offset) &
      (sdata->s_packet_len - 1));
   else if (origLoc > packet)
    break;
  }
 }

 return map->s_partition_root + block + offset;
}
