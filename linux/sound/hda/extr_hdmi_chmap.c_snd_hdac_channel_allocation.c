
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;


 int hdmi_channel_allocation_spk_alloc_blk (struct hdac_device*,int,int) ;
 int hdmi_manual_channel_allocation (int,unsigned char*) ;

int snd_hdac_channel_allocation(struct hdac_device *hdac, int spk_alloc,
  int channels, bool chmap_set, bool non_pcm, unsigned char *map)
{
 int ca;

 if (!non_pcm && chmap_set)
  ca = hdmi_manual_channel_allocation(channels, map);
 else
  ca = hdmi_channel_allocation_spk_alloc_blk(hdac,
     spk_alloc, channels);

 if (ca < 0)
  ca = 0;

 return ca;
}
