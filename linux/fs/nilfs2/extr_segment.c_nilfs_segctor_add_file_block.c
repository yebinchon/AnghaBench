
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nblocks; } ;
struct nilfs_segment_buffer {scalar_t__ sb_rest_blocks; TYPE_1__ sb_sum; } ;
struct nilfs_sc_info {scalar_t__ sc_blk_cnt; int sc_binfo_ptr; struct nilfs_segment_buffer* sc_curseg; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int nilfs_segbuf_add_file_buffer (struct nilfs_segment_buffer*,struct buffer_head*) ;
 int nilfs_segbuf_extend_segsum (struct nilfs_segment_buffer*) ;
 int nilfs_segctor_begin_finfo (struct nilfs_sc_info*,struct inode*) ;
 int nilfs_segctor_end_finfo (struct nilfs_sc_info*,struct inode*) ;
 int nilfs_segctor_feed_segment (struct nilfs_sc_info*) ;
 int nilfs_segctor_map_segsum_entry (struct nilfs_sc_info*,int *,unsigned int) ;
 int nilfs_segctor_segsum_block_required (struct nilfs_sc_info*,int *,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_segctor_add_file_block(struct nilfs_sc_info *sci,
     struct buffer_head *bh,
     struct inode *inode,
     unsigned int binfo_size)
{
 struct nilfs_segment_buffer *segbuf;
 int required, err = 0;

 retry:
 segbuf = sci->sc_curseg;
 required = nilfs_segctor_segsum_block_required(
  sci, &sci->sc_binfo_ptr, binfo_size);
 if (segbuf->sb_sum.nblocks + required + 1 > segbuf->sb_rest_blocks) {
  nilfs_segctor_end_finfo(sci, inode);
  err = nilfs_segctor_feed_segment(sci);
  if (err)
   return err;
  goto retry;
 }
 if (unlikely(required)) {
  err = nilfs_segbuf_extend_segsum(segbuf);
  if (unlikely(err))
   goto failed;
 }
 if (sci->sc_blk_cnt == 0)
  nilfs_segctor_begin_finfo(sci, inode);

 nilfs_segctor_map_segsum_entry(sci, &sci->sc_binfo_ptr, binfo_size);

 nilfs_segbuf_add_file_buffer(segbuf, bh);
 sci->sc_blk_cnt++;
 failed:
 return err;
}
