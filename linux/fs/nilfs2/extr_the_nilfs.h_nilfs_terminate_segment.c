
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {scalar_t__ ns_pseg_offset; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static inline void
nilfs_terminate_segment(struct the_nilfs *nilfs, sector_t seg_start,
   sector_t seg_end)
{

 nilfs->ns_pseg_offset = seg_end - seg_start + 1;
}
