
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_sufile; int ns_nextnum; int ns_segnum; int ns_seg_seq; int ns_pseg_offset; } ;
struct TYPE_2__ {int seg_seq; } ;
struct nilfs_segment_buffer {scalar_t__ sb_rest_blocks; int sb_list; int sb_segnum; TYPE_1__ sb_sum; int sb_nextnum; } ;
struct nilfs_sc_info {scalar_t__ sc_segbuf_nblocks; int sc_segbufs; int sc_write_logs; int sc_super; } ;
typedef int __u64 ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct nilfs_segment_buffer* NILFS_LAST_SEGBUF (int *) ;
 scalar_t__ NILFS_PSEG_MIN_BLOCKS ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int nilfs_segbuf_free (struct nilfs_segment_buffer*) ;
 int nilfs_segbuf_map (struct nilfs_segment_buffer*,int ,int ,struct the_nilfs*) ;
 int nilfs_segbuf_map_cont (struct nilfs_segment_buffer*,struct nilfs_segment_buffer*) ;
 struct nilfs_segment_buffer* nilfs_segbuf_new (int ) ;
 int nilfs_segbuf_set_next_segnum (struct nilfs_segment_buffer*,int ,struct the_nilfs*) ;
 int nilfs_shift_to_next_segment (struct the_nilfs*) ;
 int nilfs_sufile_alloc (int ,int *) ;
 int nilfs_sufile_mark_dirty (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_segctor_begin_construction(struct nilfs_sc_info *sci,
         struct the_nilfs *nilfs)
{
 struct nilfs_segment_buffer *segbuf, *prev;
 __u64 nextnum;
 int err, alloc = 0;

 segbuf = nilfs_segbuf_new(sci->sc_super);
 if (unlikely(!segbuf))
  return -ENOMEM;

 if (list_empty(&sci->sc_write_logs)) {
  nilfs_segbuf_map(segbuf, nilfs->ns_segnum,
     nilfs->ns_pseg_offset, nilfs);
  if (segbuf->sb_rest_blocks < NILFS_PSEG_MIN_BLOCKS) {
   nilfs_shift_to_next_segment(nilfs);
   nilfs_segbuf_map(segbuf, nilfs->ns_segnum, 0, nilfs);
  }

  segbuf->sb_sum.seg_seq = nilfs->ns_seg_seq;
  nextnum = nilfs->ns_nextnum;

  if (nilfs->ns_segnum == nilfs->ns_nextnum)

   alloc++;
 } else {

  prev = NILFS_LAST_SEGBUF(&sci->sc_write_logs);
  nilfs_segbuf_map_cont(segbuf, prev);
  segbuf->sb_sum.seg_seq = prev->sb_sum.seg_seq;
  nextnum = prev->sb_nextnum;

  if (segbuf->sb_rest_blocks < NILFS_PSEG_MIN_BLOCKS) {
   nilfs_segbuf_map(segbuf, prev->sb_nextnum, 0, nilfs);
   segbuf->sb_sum.seg_seq++;
   alloc++;
  }
 }

 err = nilfs_sufile_mark_dirty(nilfs->ns_sufile, segbuf->sb_segnum);
 if (err)
  goto failed;

 if (alloc) {
  err = nilfs_sufile_alloc(nilfs->ns_sufile, &nextnum);
  if (err)
   goto failed;
 }
 nilfs_segbuf_set_next_segnum(segbuf, nextnum, nilfs);

 BUG_ON(!list_empty(&sci->sc_segbufs));
 list_add_tail(&segbuf->sb_list, &sci->sc_segbufs);
 sci->sc_segbuf_nblocks = segbuf->sb_rest_blocks;
 return 0;

 failed:
 nilfs_segbuf_free(segbuf);
 return err;
}
