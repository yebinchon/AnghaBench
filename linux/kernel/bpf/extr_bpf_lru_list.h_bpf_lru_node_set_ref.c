
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_node {int ref; } ;



__attribute__((used)) static inline void bpf_lru_node_set_ref(struct bpf_lru_node *node)
{



 if (!node->ref)
  node->ref = 1;
}
