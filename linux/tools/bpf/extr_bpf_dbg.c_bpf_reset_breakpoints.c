
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int array_size (int*) ;
 int* bpf_breakpoints ;

__attribute__((used)) static void bpf_reset_breakpoints(void)
{
 int i;

 for (i = 0; i < array_size(bpf_breakpoints); i++)
  bpf_breakpoints[i] = -1;
}
