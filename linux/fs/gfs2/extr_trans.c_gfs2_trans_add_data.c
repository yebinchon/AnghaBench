
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_trans {int tr_databuf; int tr_num_databuf_new; int tr_flags; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {int gl_flags; TYPE_1__ gl_name; } ;
struct gfs2_bufdata {int bd_list; int bd_bh; struct gfs2_glock* bd_gl; } ;
struct buffer_head {struct gfs2_bufdata* b_private; } ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;


 int GLF_DIRTY ;
 int GLF_LFLUSH ;
 int TR_TOUCHED ;
 scalar_t__ buffer_pinned (struct buffer_head*) ;
 TYPE_2__* current ;
 struct gfs2_bufdata* gfs2_alloc_bufdata (struct gfs2_glock*,struct buffer_head*) ;
 int gfs2_assert (struct gfs2_sbd*,int) ;
 int gfs2_log_lock (struct gfs2_sbd*) ;
 int gfs2_log_unlock (struct gfs2_sbd*) ;
 int gfs2_pin (struct gfs2_sbd*,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int lock_buffer (struct buffer_head*) ;
 int set_bit (int ,int *) ;
 int unlock_buffer (struct buffer_head*) ;

void gfs2_trans_add_data(struct gfs2_glock *gl, struct buffer_head *bh)
{
 struct gfs2_trans *tr = current->journal_info;
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
 struct gfs2_bufdata *bd;

 lock_buffer(bh);
 if (buffer_pinned(bh)) {
  set_bit(TR_TOUCHED, &tr->tr_flags);
  goto out;
 }
 gfs2_log_lock(sdp);
 bd = bh->b_private;
 if (bd == ((void*)0)) {
  gfs2_log_unlock(sdp);
  unlock_buffer(bh);
  if (bh->b_private == ((void*)0))
   bd = gfs2_alloc_bufdata(gl, bh);
  else
   bd = bh->b_private;
  lock_buffer(bh);
  gfs2_log_lock(sdp);
 }
 gfs2_assert(sdp, bd->bd_gl == gl);
 set_bit(TR_TOUCHED, &tr->tr_flags);
 if (list_empty(&bd->bd_list)) {
  set_bit(GLF_LFLUSH, &bd->bd_gl->gl_flags);
  set_bit(GLF_DIRTY, &bd->bd_gl->gl_flags);
  gfs2_pin(sdp, bd->bd_bh);
  tr->tr_num_databuf_new++;
  list_add_tail(&bd->bd_list, &tr->tr_databuf);
 }
 gfs2_log_unlock(sdp);
out:
 unlock_buffer(bh);
}
