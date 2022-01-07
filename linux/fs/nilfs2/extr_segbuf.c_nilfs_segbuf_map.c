
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int dummy; } ;
struct nilfs_segment_buffer {scalar_t__ sb_pseg_start; scalar_t__ sb_fseg_end; scalar_t__ sb_rest_blocks; scalar_t__ sb_fseg_start; int sb_segnum; } ;
typedef int __u64 ;


 int nilfs_get_segment_range (struct the_nilfs*,int ,scalar_t__*,scalar_t__*) ;

void nilfs_segbuf_map(struct nilfs_segment_buffer *segbuf, __u64 segnum,
       unsigned long offset, struct the_nilfs *nilfs)
{
 segbuf->sb_segnum = segnum;
 nilfs_get_segment_range(nilfs, segnum, &segbuf->sb_fseg_start,
    &segbuf->sb_fseg_end);

 segbuf->sb_pseg_start = segbuf->sb_fseg_start + offset;
 segbuf->sb_rest_blocks =
  segbuf->sb_fseg_end - segbuf->sb_pseg_start + 1;
}
