
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int put_bh (struct buffer_head*) ;
 int set_bitmap_uptodate (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

void ext4_end_bitmap_read(struct buffer_head *bh, int uptodate)
{
 if (uptodate) {
  set_buffer_uptodate(bh);
  set_bitmap_uptodate(bh);
 }
 unlock_buffer(bh);
 put_bh(bh);
}
