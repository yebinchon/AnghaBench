
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nblocks; } ;
struct nilfs_segment_buffer {scalar_t__ sb_nbio; scalar_t__ sb_segnum; TYPE_1__ sb_sum; scalar_t__ sb_pseg_start; int sb_super; int sb_err; int sb_bio_event; } ;


 int EIO ;
 int KERN_ERR ;
 scalar_t__ atomic_read (int *) ;
 int nilfs_msg (int ,int ,char*,unsigned long long,int ,unsigned long long) ;
 scalar_t__ unlikely (int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int nilfs_segbuf_wait(struct nilfs_segment_buffer *segbuf)
{
 int err = 0;

 if (!segbuf->sb_nbio)
  return 0;

 do {
  wait_for_completion(&segbuf->sb_bio_event);
 } while (--segbuf->sb_nbio > 0);

 if (unlikely(atomic_read(&segbuf->sb_err) > 0)) {
  nilfs_msg(segbuf->sb_super, KERN_ERR,
     "I/O error writing log (start-blocknr=%llu, block-count=%lu) in segment %llu",
     (unsigned long long)segbuf->sb_pseg_start,
     segbuf->sb_sum.nblocks,
     (unsigned long long)segbuf->sb_segnum);
  err = -EIO;
 }
 return err;
}
