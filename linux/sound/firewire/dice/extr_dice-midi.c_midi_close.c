
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_dice {int mutex; int substreams_counter; } ;
struct TYPE_2__ {struct snd_dice* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_dice_stream_lock_release (struct snd_dice*) ;
 int snd_dice_stream_stop_duplex (struct snd_dice*) ;

__attribute__((used)) static int midi_close(struct snd_rawmidi_substream *substream)
{
 struct snd_dice *dice = substream->rmidi->private_data;

 mutex_lock(&dice->mutex);

 --dice->substreams_counter;
 snd_dice_stream_stop_duplex(dice);

 mutex_unlock(&dice->mutex);

 snd_dice_stream_lock_release(dice);
 return 0;
}
