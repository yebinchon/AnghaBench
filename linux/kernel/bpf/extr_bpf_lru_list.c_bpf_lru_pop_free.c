
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_lru_node {int dummy; } ;
struct bpf_lru {scalar_t__ percpu; } ;


 struct bpf_lru_node* bpf_common_lru_pop_free (struct bpf_lru*,int ) ;
 struct bpf_lru_node* bpf_percpu_lru_pop_free (struct bpf_lru*,int ) ;

struct bpf_lru_node *bpf_lru_pop_free(struct bpf_lru *lru, u32 hash)
{
 if (lru->percpu)
  return bpf_percpu_lru_pop_free(lru, hash);
 else
  return bpf_common_lru_pop_free(lru, hash);
}
