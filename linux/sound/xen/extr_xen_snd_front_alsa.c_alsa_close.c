
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_snd_front_pcm_stream_info {int evt_pair; } ;
struct snd_pcm_substream {int dummy; } ;


 struct xen_snd_front_pcm_stream_info* stream_get (struct snd_pcm_substream*) ;
 int xen_snd_front_evtchnl_pair_set_connected (int ,int) ;

__attribute__((used)) static int alsa_close(struct snd_pcm_substream *substream)
{
 struct xen_snd_front_pcm_stream_info *stream = stream_get(substream);

 xen_snd_front_evtchnl_pair_set_connected(stream->evt_pair, 0);
 return 0;
}
