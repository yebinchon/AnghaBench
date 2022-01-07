
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nblocks; } ;
struct nilfs_segment_buffer {scalar_t__ sb_pseg_start; scalar_t__ sb_fseg_end; scalar_t__ sb_rest_blocks; TYPE_1__ sb_sum; int sb_fseg_start; int sb_segnum; } ;



void nilfs_segbuf_map_cont(struct nilfs_segment_buffer *segbuf,
      struct nilfs_segment_buffer *prev)
{
 segbuf->sb_segnum = prev->sb_segnum;
 segbuf->sb_fseg_start = prev->sb_fseg_start;
 segbuf->sb_fseg_end = prev->sb_fseg_end;
 segbuf->sb_pseg_start = prev->sb_pseg_start + prev->sb_sum.nblocks;
 segbuf->sb_rest_blocks =
  segbuf->sb_fseg_end - segbuf->sb_pseg_start + 1;
}
