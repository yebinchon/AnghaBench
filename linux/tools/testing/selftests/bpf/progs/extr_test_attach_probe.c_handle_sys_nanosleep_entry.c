
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int bpf_map_update_elem (int *,int const*,int const*,int ) ;
 int results_map ;

int handle_sys_nanosleep_entry(struct pt_regs *ctx)
{
 const int key = 0, value = 1;

 bpf_map_update_elem(&results_map, &key, &value, 0);
 return 0;
}
