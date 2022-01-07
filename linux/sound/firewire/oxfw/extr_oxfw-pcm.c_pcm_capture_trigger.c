
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_oxfw* private_data; } ;
struct snd_oxfw {int tx_stream; } ;


 int EINVAL ;


 int amdtp_stream_pcm_trigger (int *,struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_capture_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_oxfw *oxfw = substream->private_data;
 struct snd_pcm_substream *pcm;

 switch (cmd) {
 case 129:
  pcm = substream;
  break;
 case 128:
  pcm = ((void*)0);
  break;
 default:
  return -EINVAL;
 }
 amdtp_stream_pcm_trigger(&oxfw->tx_stream, pcm);
 return 0;
}
