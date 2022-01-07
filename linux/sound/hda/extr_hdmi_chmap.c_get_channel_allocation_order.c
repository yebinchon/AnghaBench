
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ca_index; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* channel_allocations ;

__attribute__((used)) static int get_channel_allocation_order(int ca)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(channel_allocations); i++) {
  if (channel_allocations[i].ca_index == ca)
   break;
 }
 return i;
}
