
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;


 int machine__delete (struct machine*) ;
 scalar_t__ machine__load_kallsyms (struct machine*,char*) ;
 struct machine* machine__new_host () ;

struct machine *machine__new_kallsyms(void)
{
 struct machine *machine = machine__new_host();






 if (machine && machine__load_kallsyms(machine, "/proc/kallsyms") <= 0) {
  machine__delete(machine);
  machine = ((void*)0);
 }

 return machine;
}
