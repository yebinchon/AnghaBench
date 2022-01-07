
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int time_stamp_abs; } ;



bool ring_buffer_time_stamp_abs(struct ring_buffer *buffer)
{
 return buffer->time_stamp_abs;
}
