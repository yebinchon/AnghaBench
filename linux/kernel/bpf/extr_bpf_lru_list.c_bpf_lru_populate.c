
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_lru {scalar_t__ percpu; } ;


 int bpf_common_lru_populate (struct bpf_lru*,void*,int ,int ,int ) ;
 int bpf_percpu_lru_populate (struct bpf_lru*,void*,int ,int ,int ) ;

void bpf_lru_populate(struct bpf_lru *lru, void *buf, u32 node_offset,
        u32 elem_size, u32 nr_elems)
{
 if (lru->percpu)
  bpf_percpu_lru_populate(lru, buf, node_offset, elem_size,
     nr_elems);
 else
  bpf_common_lru_populate(lru, buf, node_offset, elem_size,
     nr_elems);
}
