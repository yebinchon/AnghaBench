
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_page; } ;


 int mark_page_accessed (int ) ;
 int trace_block_touch_buffer (struct buffer_head*) ;

inline void touch_buffer(struct buffer_head *bh)
{
 trace_block_touch_buffer(bh);
 mark_page_accessed(bh->b_page);
}
