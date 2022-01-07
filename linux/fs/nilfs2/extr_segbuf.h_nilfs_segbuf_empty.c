
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nblocks; scalar_t__ nsumblk; } ;
struct nilfs_segment_buffer {TYPE_1__ sb_sum; } ;



__attribute__((used)) static inline int nilfs_segbuf_empty(struct nilfs_segment_buffer *segbuf)
{
 return segbuf->sb_sum.nblocks == segbuf->sb_sum.nsumblk;
}
