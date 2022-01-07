
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* channel_allocations ;
 int get_channel_allocation_order (int) ;

int snd_hdac_get_active_channels(int ca)
{
 int ordered_ca = get_channel_allocation_order(ca);




 if (ordered_ca >= ARRAY_SIZE(channel_allocations))
  ordered_ca = 0;

 return channel_allocations[ordered_ca].channels;
}
