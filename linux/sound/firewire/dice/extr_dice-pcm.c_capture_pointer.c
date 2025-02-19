
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; struct snd_dice* private_data; } ;
struct snd_dice {struct amdtp_stream* tx_stream; } ;
struct amdtp_stream {int dummy; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {size_t device; } ;


 int amdtp_stream_pcm_pointer (struct amdtp_stream*) ;

__attribute__((used)) static snd_pcm_uframes_t capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_dice *dice = substream->private_data;
 struct amdtp_stream *stream = &dice->tx_stream[substream->pcm->device];

 return amdtp_stream_pcm_pointer(stream);
}
