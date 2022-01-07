
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int end_buffer_async_write ;
 int mark_buffer_async_write_endio (struct buffer_head*,int ) ;

void mark_buffer_async_write(struct buffer_head *bh)
{
 mark_buffer_async_write_endio(bh, end_buffer_async_write);
}
