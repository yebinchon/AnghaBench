
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_end_io; } ;


 int BUG_ON (int) ;
 int EIO ;
 int REQ_OP_READ ;
 int buffer_locked (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int submit_bh (int ,int ,struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int bh_submit_read(struct buffer_head *bh)
{
 BUG_ON(!buffer_locked(bh));

 if (buffer_uptodate(bh)) {
  unlock_buffer(bh);
  return 0;
 }

 get_bh(bh);
 bh->b_end_io = end_buffer_read_sync;
 submit_bh(REQ_OP_READ, 0, bh);
 wait_on_buffer(bh);
 if (buffer_uptodate(bh))
  return 0;
 return -EIO;
}
