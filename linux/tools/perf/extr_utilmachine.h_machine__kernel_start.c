
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct machine {int kernel_start; } ;


 int machine__get_kernel_start (struct machine*) ;

__attribute__((used)) static inline u64 machine__kernel_start(struct machine *machine)
{
 if (!machine->kernel_start)
  machine__get_kernel_start(machine);
 return machine->kernel_start;
}
