
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_switch_args {int dummy; } ;
typedef int __u64 ;
typedef int __u32 ;


 int PERF_MAX_STACK_DEPTH ;
 int bpf_get_stack (struct sched_switch_args*,void*,int,int ) ;
 int bpf_get_stackid (struct sched_switch_args*,int *,int ) ;
 void* bpf_map_lookup_elem (int *,int*) ;
 int bpf_map_update_elem (int *,int*,int*,int ) ;
 int control_map ;
 int stack_amap ;
 int stackid_hmap ;
 int stackmap ;

int oncpu(struct sched_switch_args *ctx)
{
 __u32 max_len = PERF_MAX_STACK_DEPTH * sizeof(__u64);
 __u32 key = 0, val = 0, *value_p;
 void *stack_p;

 value_p = bpf_map_lookup_elem(&control_map, &key);
 if (value_p && *value_p)
  return 0;


 key = bpf_get_stackid(ctx, &stackmap, 0);
 if ((int)key >= 0) {
  bpf_map_update_elem(&stackid_hmap, &key, &val, 0);
  stack_p = bpf_map_lookup_elem(&stack_amap, &key);
  if (stack_p)
   bpf_get_stack(ctx, stack_p, max_len, 0);
 }

 return 0;
}
