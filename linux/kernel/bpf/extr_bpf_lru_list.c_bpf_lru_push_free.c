
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_node {int dummy; } ;
struct bpf_lru {scalar_t__ percpu; } ;


 int bpf_common_lru_push_free (struct bpf_lru*,struct bpf_lru_node*) ;
 int bpf_percpu_lru_push_free (struct bpf_lru*,struct bpf_lru_node*) ;

void bpf_lru_push_free(struct bpf_lru *lru, struct bpf_lru_node *node)
{
 if (lru->percpu)
  bpf_percpu_lru_push_free(lru, node);
 else
  bpf_common_lru_push_free(lru, node);
}
