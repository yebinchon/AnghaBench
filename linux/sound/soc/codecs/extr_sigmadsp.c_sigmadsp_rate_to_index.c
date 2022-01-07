
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int count; unsigned int* list; } ;
struct sigmadsp {TYPE_1__ rate_constraints; } ;


 int EINVAL ;

__attribute__((used)) static int sigmadsp_rate_to_index(struct sigmadsp *sigmadsp, unsigned int rate)
{
 unsigned int i;

 for (i = 0; i < sigmadsp->rate_constraints.count; i++) {
  if (sigmadsp->rate_constraints.list[i] == rate)
   return i;
 }

 return -EINVAL;
}
