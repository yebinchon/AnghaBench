
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pnfs_block_dev_map {int bdev; int disk_offset; int len; int start; } ;
struct pnfs_block_dev {int bdev; int disk_offset; int len; int start; } ;



__attribute__((used)) static bool bl_map_simple(struct pnfs_block_dev *dev, u64 offset,
  struct pnfs_block_dev_map *map)
{
 map->start = dev->start;
 map->len = dev->len;
 map->disk_offset = dev->disk_offset;
 map->bdev = dev->bdev;
 return 1;
}
