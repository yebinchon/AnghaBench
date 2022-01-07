
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_state; struct buffer_head* b_private; } ;


 int BH_Shadow ;
 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int clear_bit_unlock (int ,int *) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int smp_mb__after_atomic () ;
 int unlock_buffer (struct buffer_head*) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void journal_end_buffer_io_sync(struct buffer_head *bh, int uptodate)
{
 struct buffer_head *orig_bh = bh->b_private;

 BUFFER_TRACE(bh, "");
 if (uptodate)
  set_buffer_uptodate(bh);
 else
  clear_buffer_uptodate(bh);
 if (orig_bh) {
  clear_bit_unlock(BH_Shadow, &orig_bh->b_state);
  smp_mb__after_atomic();
  wake_up_bit(&orig_bh->b_state, BH_Shadow);
 }
 unlock_buffer(bh);
}
