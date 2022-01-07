
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;


 int HOST_KERNEL_ID ;
 int free (struct machine*) ;
 scalar_t__ machine__create_kernel_maps (struct machine*) ;
 int machine__init (struct machine*,char*,int ) ;
 struct machine* malloc (int) ;

struct machine *machine__new_host(void)
{
 struct machine *machine = malloc(sizeof(*machine));

 if (machine != ((void*)0)) {
  machine__init(machine, "", HOST_KERNEL_ID);

  if (machine__create_kernel_maps(machine) < 0)
   goto out_delete;
 }

 return machine;
out_delete:
 free(machine);
 return ((void*)0);
}
