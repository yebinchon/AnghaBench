
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; struct snd_dice* private_data; } ;
struct snd_dice {struct amdtp_stream* rx_stream; } ;
struct amdtp_stream {int dummy; } ;
struct TYPE_2__ {size_t device; } ;


 int EINVAL ;


 int amdtp_stream_pcm_trigger (struct amdtp_stream*,struct snd_pcm_substream*) ;

__attribute__((used)) static int playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_dice *dice = substream->private_data;
 struct amdtp_stream *stream = &dice->rx_stream[substream->pcm->device];

 switch (cmd) {
 case 129:
  amdtp_stream_pcm_trigger(stream, substream);
  break;
 case 128:
  amdtp_stream_pcm_trigger(stream, ((void*)0));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
