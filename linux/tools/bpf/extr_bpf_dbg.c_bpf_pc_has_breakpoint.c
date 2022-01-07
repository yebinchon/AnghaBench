
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int array_size (scalar_t__*) ;
 scalar_t__* bpf_breakpoints ;

__attribute__((used)) static bool bpf_pc_has_breakpoint(uint16_t pc)
{
 int i;

 for (i = 0; i < array_size(bpf_breakpoints); i++) {
  if (bpf_breakpoints[i] < 0)
   continue;
  if (bpf_breakpoints[i] == pc)
   return 1;
 }

 return 0;
}
