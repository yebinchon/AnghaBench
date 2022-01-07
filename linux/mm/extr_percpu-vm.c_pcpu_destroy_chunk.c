
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {scalar_t__ data; int base_addr; } ;


 int pcpu_free_chunk (struct pcpu_chunk*) ;
 int pcpu_free_vm_areas (scalar_t__,int ) ;
 int pcpu_nr_groups ;
 int pcpu_stats_chunk_dealloc () ;
 int trace_percpu_destroy_chunk (int ) ;

__attribute__((used)) static void pcpu_destroy_chunk(struct pcpu_chunk *chunk)
{
 if (!chunk)
  return;

 pcpu_stats_chunk_dealloc();
 trace_percpu_destroy_chunk(chunk->base_addr);

 if (chunk->data)
  pcpu_free_vm_areas(chunk->data, pcpu_nr_groups);
 pcpu_free_chunk(chunk);
}
