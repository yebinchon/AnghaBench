
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int buffer_io_error (struct buffer_head*,char*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int mark_buffer_write_io_error (struct buffer_head*) ;
 int put_bh (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

void end_buffer_write_sync(struct buffer_head *bh, int uptodate)
{
 if (uptodate) {
  set_buffer_uptodate(bh);
 } else {
  buffer_io_error(bh, ", lost sync page write");
  mark_buffer_write_io_error(bh);
  clear_buffer_uptodate(bh);
 }
 unlock_buffer(bh);
 put_bh(bh);
}
