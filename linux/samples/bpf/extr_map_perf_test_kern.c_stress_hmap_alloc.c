
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;


 int BPF_ANY ;
 int bpf_get_current_pid_tgid () ;
 int bpf_map_delete_elem (int *,int *) ;
 long* bpf_map_lookup_elem (int *,int *) ;
 int bpf_map_update_elem (int *,int *,long*,int ) ;
 int hash_map_alloc ;

int stress_hmap_alloc(struct pt_regs *ctx)
{
 u32 key = bpf_get_current_pid_tgid();
 long init_val = 1;
 long *value;

 bpf_map_update_elem(&hash_map_alloc, &key, &init_val, BPF_ANY);
 value = bpf_map_lookup_elem(&hash_map_alloc, &key);
 if (value)
  bpf_map_delete_elem(&hash_map_alloc, &key);
 return 0;
}
