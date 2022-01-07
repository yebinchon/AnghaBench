
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int nr_pages_to_update; int nr_pages; } ;


 int rb_insert_pages (struct ring_buffer_per_cpu*) ;
 int rb_remove_pages (struct ring_buffer_per_cpu*,int ) ;

__attribute__((used)) static void rb_update_pages(struct ring_buffer_per_cpu *cpu_buffer)
{
 int success;

 if (cpu_buffer->nr_pages_to_update > 0)
  success = rb_insert_pages(cpu_buffer);
 else
  success = rb_remove_pages(cpu_buffer,
     -cpu_buffer->nr_pages_to_update);

 if (success)
  cpu_buffer->nr_pages += cpu_buffer->nr_pages_to_update;
}
