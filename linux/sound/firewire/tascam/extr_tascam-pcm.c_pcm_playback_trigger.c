
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int rx_stream; } ;
struct snd_pcm_substream {struct snd_tscm* private_data; } ;


 int EINVAL ;


 int amdtp_stream_pcm_trigger (int *,struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_tscm *tscm = substream->private_data;

 switch (cmd) {
 case 129:
  amdtp_stream_pcm_trigger(&tscm->rx_stream, substream);
  break;
 case 128:
  amdtp_stream_pcm_trigger(&tscm->rx_stream, ((void*)0));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
