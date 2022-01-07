
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_snd_front_pcm_stream_info {TYPE_1__* evt_pair; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int req; } ;


 int stream_free (struct xen_snd_front_pcm_stream_info*) ;
 struct xen_snd_front_pcm_stream_info* stream_get (struct snd_pcm_substream*) ;
 int xen_snd_front_stream_close (int *) ;

__attribute__((used)) static int alsa_hw_free(struct snd_pcm_substream *substream)
{
 struct xen_snd_front_pcm_stream_info *stream = stream_get(substream);
 int ret;

 ret = xen_snd_front_stream_close(&stream->evt_pair->req);
 stream_free(stream);
 return ret;
}
