
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {unsigned long b_state; int * b_bdev; } ;


 unsigned long BUFFER_FLAGS_DISCARD ;
 int clear_buffer_dirty (struct buffer_head*) ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 int lock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void discard_buffer(struct buffer_head * bh)
{
 unsigned long b_state, b_state_old;

 lock_buffer(bh);
 clear_buffer_dirty(bh);
 bh->b_bdev = ((void*)0);
 b_state = bh->b_state;
 for (;;) {
  b_state_old = cmpxchg(&bh->b_state, b_state,
          (b_state & ~BUFFER_FLAGS_DISCARD));
  if (b_state_old == b_state)
   break;
  b_state = b_state_old;
 }
 unlock_buffer(bh);
}
