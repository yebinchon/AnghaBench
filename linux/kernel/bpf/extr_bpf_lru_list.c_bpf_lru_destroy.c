
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int local_list; } ;
struct bpf_lru {TYPE_1__ common_lru; int percpu_lru; scalar_t__ percpu; } ;


 int free_percpu (int ) ;

void bpf_lru_destroy(struct bpf_lru *lru)
{
 if (lru->percpu)
  free_percpu(lru->percpu_lru);
 else
  free_percpu(lru->common_lru.local_list);
}
