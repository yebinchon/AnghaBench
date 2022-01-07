
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fat_boot_sector {scalar_t__ heads; scalar_t__ secs_track; scalar_t__ fat_length; scalar_t__ media; int sectors; int dir_entries; scalar_t__ fats; scalar_t__ reserved; scalar_t__ sec_per_clus; int sector_size; } ;


 scalar_t__ get_unaligned_le16 (int *) ;

__attribute__((used)) static bool fat_bpb_is_zero(struct fat_boot_sector *b)
{
 if (get_unaligned_le16(&b->sector_size))
  return 0;
 if (b->sec_per_clus)
  return 0;
 if (b->reserved)
  return 0;
 if (b->fats)
  return 0;
 if (get_unaligned_le16(&b->dir_entries))
  return 0;
 if (get_unaligned_le16(&b->sectors))
  return 0;
 if (b->media)
  return 0;
 if (b->fat_length)
  return 0;
 if (b->secs_track)
  return 0;
 if (b->heads)
  return 0;
 return 1;
}
