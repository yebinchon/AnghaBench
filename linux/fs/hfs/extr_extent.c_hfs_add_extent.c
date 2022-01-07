
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfs_extent {void* count; void* block; } ;


 int EIO ;
 int ENOSPC ;
 scalar_t__ be16_to_cpu (void*) ;
 void* cpu_to_be16 (scalar_t__) ;
 int hfs_dump_extent (struct hfs_extent*) ;

__attribute__((used)) static int hfs_add_extent(struct hfs_extent *extent, u16 offset,
     u16 alloc_block, u16 block_count)
{
 u16 count, start;
 int i;

 hfs_dump_extent(extent);
 for (i = 0; i < 3; extent++, i++) {
  count = be16_to_cpu(extent->count);
  if (offset == count) {
   start = be16_to_cpu(extent->block);
   if (alloc_block != start + count) {
    if (++i >= 3)
     return -ENOSPC;
    extent++;
    extent->block = cpu_to_be16(alloc_block);
   } else
    block_count += count;
   extent->count = cpu_to_be16(block_count);
   return 0;
  } else if (offset < count)
   break;
  offset -= count;
 }

 return -EIO;
}
