
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; struct snd_dice* private_data; } ;
struct snd_dice {int mutex; struct amdtp_stream* rx_stream; } ;
struct amdtp_stream {int dummy; } ;
struct TYPE_2__ {size_t device; } ;


 int amdtp_stream_pcm_prepare (struct amdtp_stream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_dice_stream_start_duplex (struct snd_dice*) ;

__attribute__((used)) static int playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_dice *dice = substream->private_data;
 struct amdtp_stream *stream = &dice->rx_stream[substream->pcm->device];
 int err;

 mutex_lock(&dice->mutex);
 err = snd_dice_stream_start_duplex(dice);
 mutex_unlock(&dice->mutex);
 if (err >= 0)
  amdtp_stream_pcm_prepare(stream);

 return err;
}
