
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int dummy; } ;
struct buffer_head {int b_end_io; } ;
typedef int const __be64 ;


 int CREATE ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 int REQ_RAHEAD ;
 int be64_to_cpu (int const) ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 struct buffer_head* gfs2_getbuf (struct gfs2_glock*,int ,int ) ;
 int submit_bh (int ,int,struct buffer_head*) ;
 scalar_t__ trylock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void gfs2_metapath_ra(struct gfs2_glock *gl, __be64 *start, __be64 *end)
{
 const __be64 *t;

 for (t = start; t < end; t++) {
  struct buffer_head *rabh;

  if (!*t)
   continue;

  rabh = gfs2_getbuf(gl, be64_to_cpu(*t), CREATE);
  if (trylock_buffer(rabh)) {
   if (!buffer_uptodate(rabh)) {
    rabh->b_end_io = end_buffer_read_sync;
    submit_bh(REQ_OP_READ,
       REQ_RAHEAD | REQ_META | REQ_PRIO,
       rabh);
    continue;
   }
   unlock_buffer(rabh);
  }
  brelse(rabh);
 }
}
