
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int array_size (scalar_t__*) ;
 scalar_t__* bpf_breakpoints ;
 int rl_printf (char*,...) ;

__attribute__((used)) static void bpf_dump_breakpoints(void)
{
 int i;

 rl_printf("breakpoints: ");

 for (i = 0; i < array_size(bpf_breakpoints); i++) {
  if (bpf_breakpoints[i] < 0)
   continue;
  rl_printf("%d ", bpf_breakpoints[i]);
 }

 rl_printf("\n");
}
