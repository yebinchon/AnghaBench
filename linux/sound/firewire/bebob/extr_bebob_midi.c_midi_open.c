
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_bebob {int mutex; int substreams_counter; } ;
struct TYPE_2__ {struct snd_bebob* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_bebob_stream_lock_release (struct snd_bebob*) ;
 int snd_bebob_stream_lock_try (struct snd_bebob*) ;
 int snd_bebob_stream_reserve_duplex (struct snd_bebob*,int ) ;
 int snd_bebob_stream_start_duplex (struct snd_bebob*) ;

__attribute__((used)) static int midi_open(struct snd_rawmidi_substream *substream)
{
 struct snd_bebob *bebob = substream->rmidi->private_data;
 int err;

 err = snd_bebob_stream_lock_try(bebob);
 if (err < 0)
  return err;

 mutex_lock(&bebob->mutex);
 err = snd_bebob_stream_reserve_duplex(bebob, 0);
 if (err >= 0) {
  ++bebob->substreams_counter;
  err = snd_bebob_stream_start_duplex(bebob);
  if (err < 0)
   --bebob->substreams_counter;
 }
 mutex_unlock(&bebob->mutex);
 if (err < 0)
  snd_bebob_stream_lock_release(bebob);

 return err;
}
