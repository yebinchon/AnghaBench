
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* addr; } ;
struct snd_pcm_plugin_channel {TYPE_2__ area; scalar_t__ enabled; } ;
struct TYPE_3__ {int channels; } ;
struct snd_pcm_plugin {scalar_t__ access; int plug; scalar_t__ extra_data; TYPE_1__ dst_format; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_sframes_t ;


 int ENXIO ;
 scalar_t__ SNDRV_PCM_ACCESS_RW_INTERLEAVED ;
 int pcm_write (int ,void*,int ) ;
 int pcm_writev (int ,void**,int ) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static snd_pcm_sframes_t io_playback_transfer(struct snd_pcm_plugin *plugin,
        const struct snd_pcm_plugin_channel *src_channels,
        struct snd_pcm_plugin_channel *dst_channels,
        snd_pcm_uframes_t frames)
{
 if (snd_BUG_ON(!plugin))
  return -ENXIO;
 if (snd_BUG_ON(!src_channels))
  return -ENXIO;
 if (plugin->access == SNDRV_PCM_ACCESS_RW_INTERLEAVED) {
  return pcm_write(plugin->plug, src_channels->area.addr, frames);
 } else {
  int channel, channels = plugin->dst_format.channels;
  void **bufs = (void**)plugin->extra_data;
  if (snd_BUG_ON(!bufs))
   return -ENXIO;
  for (channel = 0; channel < channels; channel++) {
   if (src_channels[channel].enabled)
    bufs[channel] = src_channels[channel].area.addr;
   else
    bufs[channel] = ((void*)0);
  }
  return pcm_writev(plugin->plug, bufs, frames);
 }
}
