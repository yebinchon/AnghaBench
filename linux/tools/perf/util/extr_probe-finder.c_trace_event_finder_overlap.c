
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr; } ;
struct trace_event_finder {int ntevs; TYPE_3__* tevs; TYPE_1__ pf; } ;
struct TYPE_5__ {scalar_t__ address; } ;
struct TYPE_6__ {TYPE_2__ point; } ;



__attribute__((used)) static bool trace_event_finder_overlap(struct trace_event_finder *tf)
{
 int i;

 for (i = 0; i < tf->ntevs; i++) {
  if (tf->pf.addr == tf->tevs[i].point.address)
   return 1;
 }
 return 0;
}
