
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ taken; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* bstack_sort_dimensions ;
 TYPE_1__* common_sort_dimensions ;
 TYPE_1__* hpp_sort_dimensions ;
 TYPE_1__* memory_sort_dimensions ;

void reset_dimensions(void)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(common_sort_dimensions); i++)
  common_sort_dimensions[i].taken = 0;

 for (i = 0; i < ARRAY_SIZE(hpp_sort_dimensions); i++)
  hpp_sort_dimensions[i].taken = 0;

 for (i = 0; i < ARRAY_SIZE(bstack_sort_dimensions); i++)
  bstack_sort_dimensions[i].taken = 0;

 for (i = 0; i < ARRAY_SIZE(memory_sort_dimensions); i++)
  memory_sort_dimensions[i].taken = 0;
}
