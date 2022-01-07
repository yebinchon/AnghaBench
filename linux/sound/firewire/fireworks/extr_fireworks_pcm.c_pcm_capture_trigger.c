
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_efw* private_data; } ;
struct snd_efw {int tx_stream; } ;


 int EINVAL ;


 int amdtp_stream_pcm_trigger (int *,struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_capture_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_efw *efw = substream->private_data;

 switch (cmd) {
 case 129:
  amdtp_stream_pcm_trigger(&efw->tx_stream, substream);
  break;
 case 128:
  amdtp_stream_pcm_trigger(&efw->tx_stream, ((void*)0));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
