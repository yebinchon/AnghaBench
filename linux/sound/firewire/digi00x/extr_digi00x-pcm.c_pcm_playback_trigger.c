
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_dg00x* private_data; } ;
struct snd_dg00x {int rx_stream; } ;


 int EINVAL ;


 int amdtp_stream_pcm_trigger (int *,struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_dg00x *dg00x = substream->private_data;

 switch (cmd) {
 case 129:
  amdtp_stream_pcm_trigger(&dg00x->rx_stream, substream);
  break;
 case 128:
  amdtp_stream_pcm_trigger(&dg00x->rx_stream, ((void*)0));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
