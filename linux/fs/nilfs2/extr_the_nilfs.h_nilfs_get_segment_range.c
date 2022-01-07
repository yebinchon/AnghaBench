
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_blocks_per_segment; int ns_first_data_block; } ;
typedef int sector_t ;
typedef int __u64 ;



__attribute__((used)) static inline void
nilfs_get_segment_range(struct the_nilfs *nilfs, __u64 segnum,
   sector_t *seg_start, sector_t *seg_end)
{
 *seg_start = (sector_t)nilfs->ns_blocks_per_segment * segnum;
 *seg_end = *seg_start + nilfs->ns_blocks_per_segment - 1;
 if (segnum == 0)
  *seg_start = nilfs->ns_first_data_block;
}
