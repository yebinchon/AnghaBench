
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int dummy; } ;
struct TYPE_2__ {int next; } ;
struct nilfs_segment_buffer {TYPE_1__ sb_sum; int sb_nextnum; } ;
typedef int __u64 ;


 int nilfs_get_segment_start_blocknr (struct the_nilfs*,int ) ;

void nilfs_segbuf_set_next_segnum(struct nilfs_segment_buffer *segbuf,
      __u64 nextnum, struct the_nilfs *nilfs)
{
 segbuf->sb_nextnum = nextnum;
 segbuf->sb_sum.next = nilfs_get_segment_start_blocknr(nilfs, nextnum);
}
