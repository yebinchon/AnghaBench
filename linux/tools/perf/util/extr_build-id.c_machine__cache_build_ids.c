
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct machine {TYPE_1__ dsos; } ;


 int __dsos__cache_build_ids (int *,struct machine*) ;

__attribute__((used)) static int machine__cache_build_ids(struct machine *machine)
{
 return __dsos__cache_build_ids(&machine->dsos.head, machine);
}
