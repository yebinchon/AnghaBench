
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int commits; int committing; } ;


 int local_inc (int *) ;

__attribute__((used)) static void rb_start_commit(struct ring_buffer_per_cpu *cpu_buffer)
{
 local_inc(&cpu_buffer->committing);
 local_inc(&cpu_buffer->commits);
}
