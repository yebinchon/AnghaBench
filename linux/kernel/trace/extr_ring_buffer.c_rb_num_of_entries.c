
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {unsigned long read; int overrun; int entries; } ;


 unsigned long local_read (int *) ;

__attribute__((used)) static inline unsigned long
rb_num_of_entries(struct ring_buffer_per_cpu *cpu_buffer)
{
 return local_read(&cpu_buffer->entries) -
  (local_read(&cpu_buffer->overrun) + cpu_buffer->read);
}
