
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_entries; } ;
struct bpf_array {int * pptrs; TYPE_1__ map; } ;


 int cond_resched () ;
 int free_percpu (int ) ;

__attribute__((used)) static void bpf_array_free_percpu(struct bpf_array *array)
{
 int i;

 for (i = 0; i < array->map.max_entries; i++) {
  free_percpu(array->pptrs[i]);
  cond_resched();
 }
}
