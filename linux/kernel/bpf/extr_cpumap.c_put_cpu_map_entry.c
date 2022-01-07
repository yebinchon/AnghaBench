
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_cpu_map_entry {struct bpf_cpu_map_entry* queue; int refcnt; } ;


 int __cpu_map_ring_cleanup (struct bpf_cpu_map_entry*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct bpf_cpu_map_entry*) ;
 int ptr_ring_cleanup (struct bpf_cpu_map_entry*,int *) ;

__attribute__((used)) static void put_cpu_map_entry(struct bpf_cpu_map_entry *rcpu)
{
 if (atomic_dec_and_test(&rcpu->refcnt)) {

  __cpu_map_ring_cleanup(rcpu->queue);
  ptr_ring_cleanup(rcpu->queue, ((void*)0));
  kfree(rcpu->queue);
  kfree(rcpu);
 }
}
