
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_cea_channel_speaker_allocation {int dummy; } ;


 struct hdac_cea_channel_speaker_allocation* channel_allocations ;
 size_t get_channel_allocation_order (int) ;

struct hdac_cea_channel_speaker_allocation *snd_hdac_get_ch_alloc_from_ca(int ca)
{
 return &channel_allocations[get_channel_allocation_order(ca)];
}
