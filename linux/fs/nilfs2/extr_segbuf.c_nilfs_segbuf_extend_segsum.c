
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nsumblk; } ;
struct nilfs_segment_buffer {TYPE_1__ sb_sum; scalar_t__ sb_pseg_start; int sb_super; } ;
struct buffer_head {int dummy; } ;


 int ENOMEM ;
 int nilfs_segbuf_add_segsum_buffer (struct nilfs_segment_buffer*,struct buffer_head*) ;
 struct buffer_head* sb_getblk (int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

int nilfs_segbuf_extend_segsum(struct nilfs_segment_buffer *segbuf)
{
 struct buffer_head *bh;

 bh = sb_getblk(segbuf->sb_super,
         segbuf->sb_pseg_start + segbuf->sb_sum.nsumblk);
 if (unlikely(!bh))
  return -ENOMEM;

 nilfs_segbuf_add_segsum_buffer(segbuf, bh);
 return 0;
}
