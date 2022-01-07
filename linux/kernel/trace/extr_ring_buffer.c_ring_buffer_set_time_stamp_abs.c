
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int time_stamp_abs; } ;



void ring_buffer_set_time_stamp_abs(struct ring_buffer *buffer, bool abs)
{
 buffer->time_stamp_abs = abs;
}
