
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct machine {TYPE_1__ dsos; } ;


 int __dsos__hit_all (int *) ;

__attribute__((used)) static int machine__hit_all_dsos(struct machine *machine)
{
 return __dsos__hit_all(&machine->dsos.head);
}
