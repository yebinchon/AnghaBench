
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_raw_tp_nest_level ;
 int this_cpu_dec (int ) ;

__attribute__((used)) static void put_bpf_raw_tp_regs(void)
{
 this_cpu_dec(bpf_raw_tp_nest_level);
}
