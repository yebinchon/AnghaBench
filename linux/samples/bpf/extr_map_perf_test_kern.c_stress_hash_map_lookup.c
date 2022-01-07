
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;


 long* bpf_map_lookup_elem (int *,int*) ;
 int hash_map ;

int stress_hash_map_lookup(struct pt_regs *ctx)
{
 u32 key = 1, i;
 long *value;

#pragma clang loop unroll(full)
 for (i = 0; i < 64; ++i)
  value = bpf_map_lookup_elem(&hash_map, &key);

 return 0;
}
