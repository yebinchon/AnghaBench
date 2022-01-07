
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;


 struct ring_buffer_event* __trace_buffer_lock_reserve (struct ring_buffer*,int,unsigned long,unsigned long,int) ;

struct ring_buffer_event *
trace_buffer_lock_reserve(struct ring_buffer *buffer,
     int type,
     unsigned long len,
     unsigned long flags, int pc)
{
 return __trace_buffer_lock_reserve(buffer, type, len, flags, pc);
}
