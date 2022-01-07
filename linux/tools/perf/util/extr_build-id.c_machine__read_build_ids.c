
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct machine {TYPE_1__ dsos; } ;


 int __dsos__read_build_ids (int *,int) ;

__attribute__((used)) static bool machine__read_build_ids(struct machine *machine, bool with_hits)
{
 return __dsos__read_build_ids(&machine->dsos.head, with_hits);
}
