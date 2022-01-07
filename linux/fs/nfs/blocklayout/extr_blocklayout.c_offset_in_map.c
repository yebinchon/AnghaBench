
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pnfs_block_dev_map {scalar_t__ start; scalar_t__ len; } ;



__attribute__((used)) static bool offset_in_map(u64 offset, struct pnfs_block_dev_map *map)
{
 return offset >= map->start && offset < map->start + map->len;
}
