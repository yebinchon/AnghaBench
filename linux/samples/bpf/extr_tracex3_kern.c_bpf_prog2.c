
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u64 ;
typedef int u32 ;
struct pt_regs {int dummy; } ;


 long PT_REGS_PARM1 (struct pt_regs*) ;
 int SLOTS ;
 long long bpf_ktime_get_ns () ;
 int bpf_map_delete_elem (int *,long*) ;
 long long* bpf_map_lookup_elem (int *,...) ;
 int lat_map ;
 long long log2l (long long) ;
 int my_map ;

int bpf_prog2(struct pt_regs *ctx)
{
 long rq = PT_REGS_PARM1(ctx);
 u64 *value, l, base;
 u32 index;

 value = bpf_map_lookup_elem(&my_map, &rq);
 if (!value)
  return 0;

 u64 cur_time = bpf_ktime_get_ns();
 u64 delta = cur_time - *value;

 bpf_map_delete_elem(&my_map, &rq);
 l = log2l(delta);
 base = 1ll << l;
 index = (l * 64 + (delta - base) * 64 / base) * 3 / 64;

 if (index >= SLOTS)
  index = SLOTS - 1;

 value = bpf_map_lookup_elem(&lat_map, &index);
 if (value)
  *value += 1;

 return 0;
}
