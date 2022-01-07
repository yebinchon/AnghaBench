
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int array_size (int*) ;
 int* bpf_breakpoints ;
 int rl_printf (char*) ;

__attribute__((used)) static void bpf_set_breakpoints(unsigned int where)
{
 int i;
 bool set = 0;

 for (i = 0; i < array_size(bpf_breakpoints); i++) {
  if (bpf_breakpoints[i] == (int) where) {
   rl_printf("breakpoint already set!\n");
   set = 1;
   break;
  }

  if (bpf_breakpoints[i] == -1 && set == 0) {
   bpf_breakpoints[i] = where;
   set = 1;
  }
 }

 if (!set)
  rl_printf("too many breakpoints set, reset first!\n");
}
