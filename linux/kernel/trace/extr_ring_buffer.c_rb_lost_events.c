
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int lost_events; } ;



__attribute__((used)) static int rb_lost_events(struct ring_buffer_per_cpu *cpu_buffer)
{
 return cpu_buffer->lost_events;
}
