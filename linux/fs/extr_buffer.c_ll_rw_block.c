
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_end_io; } ;


 int WRITE ;
 int buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int end_buffer_write_sync ;
 int get_bh (struct buffer_head*) ;
 int submit_bh (int,int,struct buffer_head*) ;
 scalar_t__ test_clear_buffer_dirty (struct buffer_head*) ;
 int trylock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

void ll_rw_block(int op, int op_flags, int nr, struct buffer_head *bhs[])
{
 int i;

 for (i = 0; i < nr; i++) {
  struct buffer_head *bh = bhs[i];

  if (!trylock_buffer(bh))
   continue;
  if (op == WRITE) {
   if (test_clear_buffer_dirty(bh)) {
    bh->b_end_io = end_buffer_write_sync;
    get_bh(bh);
    submit_bh(op, op_flags, bh);
    continue;
   }
  } else {
   if (!buffer_uptodate(bh)) {
    bh->b_end_io = end_buffer_read_sync;
    get_bh(bh);
    submit_bh(op, op_flags, bh);
    continue;
   }
  }
  unlock_buffer(bh);
 }
}
