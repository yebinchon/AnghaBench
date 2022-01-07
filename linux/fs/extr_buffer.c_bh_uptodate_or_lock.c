
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int buffer_uptodate (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

int bh_uptodate_or_lock(struct buffer_head *bh)
{
 if (!buffer_uptodate(bh)) {
  lock_buffer(bh);
  if (!buffer_uptodate(bh))
   return 0;
  unlock_buffer(bh);
 }
 return 1;
}
