
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int first; int step; } ;
struct snd_pcm_plugin_channel {scalar_t__ frames; TYPE_2__ area; } ;
struct TYPE_3__ {unsigned int channels; } ;
struct snd_pcm_plugin {scalar_t__ extra_data; TYPE_1__ src_format; } ;
struct rate_priv {int (* func ) (struct snd_pcm_plugin*,struct snd_pcm_plugin_channel const*,struct snd_pcm_plugin_channel*,scalar_t__,scalar_t__) ;} ;
typedef scalar_t__ snd_pcm_uframes_t ;
typedef scalar_t__ snd_pcm_sframes_t ;


 scalar_t__ ENXIO ;
 scalar_t__ rate_dst_frames (struct snd_pcm_plugin*,scalar_t__) ;
 scalar_t__ snd_BUG_ON (int) ;
 int stub1 (struct snd_pcm_plugin*,struct snd_pcm_plugin_channel const*,struct snd_pcm_plugin_channel*,scalar_t__,scalar_t__) ;

__attribute__((used)) static snd_pcm_sframes_t rate_transfer(struct snd_pcm_plugin *plugin,
        const struct snd_pcm_plugin_channel *src_channels,
        struct snd_pcm_plugin_channel *dst_channels,
        snd_pcm_uframes_t frames)
{
 snd_pcm_uframes_t dst_frames;
 struct rate_priv *data;

 if (snd_BUG_ON(!plugin || !src_channels || !dst_channels))
  return -ENXIO;
 if (frames == 0)
  return 0;
 dst_frames = rate_dst_frames(plugin, frames);
 if (dst_frames > dst_channels[0].frames)
  dst_frames = dst_channels[0].frames;
 data = (struct rate_priv *)plugin->extra_data;
 data->func(plugin, src_channels, dst_channels, frames, dst_frames);
 return dst_frames;
}
