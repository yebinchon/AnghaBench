
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_snd_front_pcm_stream_info {int dummy; } ;
struct xen_snd_front_pcm_instance_info {struct xen_snd_front_pcm_stream_info* streams_cap; struct xen_snd_front_pcm_stream_info* streams_pb; } ;
struct snd_pcm_substream {scalar_t__ stream; size_t number; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct xen_snd_front_pcm_instance_info* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static struct xen_snd_front_pcm_stream_info *
stream_get(struct snd_pcm_substream *substream)
{
 struct xen_snd_front_pcm_instance_info *pcm_instance =
   snd_pcm_substream_chip(substream);
 struct xen_snd_front_pcm_stream_info *stream;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  stream = &pcm_instance->streams_pb[substream->number];
 else
  stream = &pcm_instance->streams_cap[substream->number];

 return stream;
}
