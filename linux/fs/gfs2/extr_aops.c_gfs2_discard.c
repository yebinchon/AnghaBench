
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct gfs2_bufdata {int bd_list; } ;
struct buffer_head {int * b_bdev; struct gfs2_bufdata* b_private; } ;


 int REMOVE_JDATA ;
 int buffer_pinned (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int clear_buffer_req (struct buffer_head*) ;
 int gfs2_log_lock (struct gfs2_sbd*) ;
 int gfs2_log_unlock (struct gfs2_sbd*) ;
 int gfs2_remove_from_journal (struct buffer_head*,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void gfs2_discard(struct gfs2_sbd *sdp, struct buffer_head *bh)
{
 struct gfs2_bufdata *bd;

 lock_buffer(bh);
 gfs2_log_lock(sdp);
 clear_buffer_dirty(bh);
 bd = bh->b_private;
 if (bd) {
  if (!list_empty(&bd->bd_list) && !buffer_pinned(bh))
   list_del_init(&bd->bd_list);
  else
   gfs2_remove_from_journal(bh, REMOVE_JDATA);
 }
 bh->b_bdev = ((void*)0);
 clear_buffer_mapped(bh);
 clear_buffer_req(bh);
 clear_buffer_new(bh);
 gfs2_log_unlock(sdp);
 unlock_buffer(bh);
}
