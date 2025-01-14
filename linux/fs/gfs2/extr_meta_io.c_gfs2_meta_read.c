
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct gfs2_trans {int tr_flags; } ;
struct gfs2_sbd {int sd_flags; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_name; } ;
struct buffer_head {void* b_end_io; } ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;


 int CREATE ;
 int DIO_WAIT ;
 int EIO ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 int SDF_WITHDRAWN ;
 int TR_TOUCHED ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 TYPE_2__* current ;
 void* end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 struct buffer_head* gfs2_getbuf (struct gfs2_glock*,scalar_t__,int ) ;
 int gfs2_io_error_bh_wd (struct gfs2_sbd*,struct buffer_head*) ;
 int gfs2_submit_bhs (int ,int,struct buffer_head**,int) ;
 int lock_buffer (struct buffer_head*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int gfs2_meta_read(struct gfs2_glock *gl, u64 blkno, int flags,
     int rahead, struct buffer_head **bhp)
{
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
 struct buffer_head *bh, *bhs[2];
 int num = 0;

 if (unlikely(test_bit(SDF_WITHDRAWN, &sdp->sd_flags))) {
  *bhp = ((void*)0);
  return -EIO;
 }

 *bhp = bh = gfs2_getbuf(gl, blkno, CREATE);

 lock_buffer(bh);
 if (buffer_uptodate(bh)) {
  unlock_buffer(bh);
  flags &= ~DIO_WAIT;
 } else {
  bh->b_end_io = end_buffer_read_sync;
  get_bh(bh);
  bhs[num++] = bh;
 }

 if (rahead) {
  bh = gfs2_getbuf(gl, blkno + 1, CREATE);

  lock_buffer(bh);
  if (buffer_uptodate(bh)) {
   unlock_buffer(bh);
   brelse(bh);
  } else {
   bh->b_end_io = end_buffer_read_sync;
   bhs[num++] = bh;
  }
 }

 gfs2_submit_bhs(REQ_OP_READ, REQ_META | REQ_PRIO, bhs, num);
 if (!(flags & DIO_WAIT))
  return 0;

 bh = *bhp;
 wait_on_buffer(bh);
 if (unlikely(!buffer_uptodate(bh))) {
  struct gfs2_trans *tr = current->journal_info;
  if (tr && test_bit(TR_TOUCHED, &tr->tr_flags))
   gfs2_io_error_bh_wd(sdp, bh);
  brelse(bh);
  *bhp = ((void*)0);
  return -EIO;
 }

 return 0;
}
