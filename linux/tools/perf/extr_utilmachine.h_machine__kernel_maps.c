
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct maps {int dummy; } ;
struct TYPE_2__ {struct maps maps; } ;
struct machine {TYPE_1__ kmaps; } ;



__attribute__((used)) static inline
struct maps *machine__kernel_maps(struct machine *machine)
{
 return &machine->kmaps.maps;
}
