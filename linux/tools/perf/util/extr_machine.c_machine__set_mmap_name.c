
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int * mmap_name; int pid; } ;


 int ENOMEM ;
 scalar_t__ asprintf (int **,char*,int ) ;
 scalar_t__ machine__is_default_guest (struct machine*) ;
 scalar_t__ machine__is_host (struct machine*) ;
 void* strdup (char*) ;

__attribute__((used)) static int machine__set_mmap_name(struct machine *machine)
{
 if (machine__is_host(machine))
  machine->mmap_name = strdup("[kernel.kallsyms]");
 else if (machine__is_default_guest(machine))
  machine->mmap_name = strdup("[guest.kernel.kallsyms]");
 else if (asprintf(&machine->mmap_name, "[guest.kernel.kallsyms.%d]",
     machine->pid) < 0)
  machine->mmap_name = ((void*)0);

 return machine->mmap_name ? 0 : -ENOMEM;
}
