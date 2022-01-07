
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
 int snd_dice_stream_lock_try (struct snd_dice*) ;
 int snd_dice_stream_reserve_duplex (struct snd_dice*,int ) ;
 int snd_dice_stream_start_duplex (struct snd_dice*) ;

__attribute__((used)) static int midi_open(struct snd_rawmidi_substream *substream)
{
 struct snd_dice *dice = substream->rmidi->private_data;
 int err;

 err = snd_dice_stream_lock_try(dice);
 if (err < 0)
  return err;

 mutex_lock(&dice->mutex);

 err = snd_dice_stream_reserve_duplex(dice, 0);
 if (err >= 0) {
  ++dice->substreams_counter;
  err = snd_dice_stream_start_duplex(dice);
  if (err < 0)
   --dice->substreams_counter;
 }

 mutex_unlock(&dice->mutex);

 if (err < 0)
  snd_dice_stream_lock_release(dice);

 return err;
}
