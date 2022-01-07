
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {int sd_log_pinned; int sd_ail_lock; } ;
struct gfs2_bufdata {TYPE_1__* bd_tr; int bd_ail_st_list; } ;
struct buffer_head {struct gfs2_bufdata* b_private; } ;
struct TYPE_4__ {int journal_info; } ;
struct TYPE_3__ {int tr_ail2_list; } ;


 int BUG_ON (int) ;
 int atomic_inc (int *) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 TYPE_2__* current ;
 int get_bh (struct buffer_head*) ;
 int gfs2_assert_withdraw (struct gfs2_sbd*,int ) ;
 int gfs2_io_error_bh_wd (struct gfs2_sbd*,struct buffer_head*) ;
 int list_move (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_set_buffer_pinned (struct buffer_head*) ;
 int trace_gfs2_pin (struct gfs2_bufdata*,int) ;

void gfs2_pin(struct gfs2_sbd *sdp, struct buffer_head *bh)
{
 struct gfs2_bufdata *bd;

 BUG_ON(!current->journal_info);

 clear_buffer_dirty(bh);
 if (test_set_buffer_pinned(bh))
  gfs2_assert_withdraw(sdp, 0);
 if (!buffer_uptodate(bh))
  gfs2_io_error_bh_wd(sdp, bh);
 bd = bh->b_private;



 spin_lock(&sdp->sd_ail_lock);
 if (bd->bd_tr)
  list_move(&bd->bd_ail_st_list, &bd->bd_tr->tr_ail2_list);
 spin_unlock(&sdp->sd_ail_lock);
 get_bh(bh);
 atomic_inc(&sdp->sd_log_pinned);
 trace_gfs2_pin(bd, 1);
}
