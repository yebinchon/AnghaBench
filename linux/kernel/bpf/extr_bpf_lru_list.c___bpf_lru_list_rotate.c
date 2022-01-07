
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_list {int dummy; } ;
struct bpf_lru {int dummy; } ;


 int __bpf_lru_list_rotate_active (struct bpf_lru*,struct bpf_lru_list*) ;
 int __bpf_lru_list_rotate_inactive (struct bpf_lru*,struct bpf_lru_list*) ;
 scalar_t__ bpf_lru_list_inactive_low (struct bpf_lru_list*) ;

__attribute__((used)) static void __bpf_lru_list_rotate(struct bpf_lru *lru, struct bpf_lru_list *l)
{
 if (bpf_lru_list_inactive_low(l))
  __bpf_lru_list_rotate_active(lru, l);

 __bpf_lru_list_rotate_inactive(lru, l);
}
