
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int slobidx_t ;
struct TYPE_3__ {scalar_t__ units; } ;
typedef TYPE_1__ slob_t ;



__attribute__((used)) static slobidx_t slob_units(slob_t *s)
{
 if (s->units > 0)
  return s->units;
 return 1;
}
