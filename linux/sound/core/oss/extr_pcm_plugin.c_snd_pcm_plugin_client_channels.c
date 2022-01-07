
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_plugin_channel {int dummy; } ;
struct snd_pcm_plugin {struct snd_pcm_plugin_channel* buf_channels; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_sframes_t ;



snd_pcm_sframes_t snd_pcm_plugin_client_channels(struct snd_pcm_plugin *plugin,
           snd_pcm_uframes_t frames,
           struct snd_pcm_plugin_channel **channels)
{
 *channels = plugin->buf_channels;
 return frames;
}
