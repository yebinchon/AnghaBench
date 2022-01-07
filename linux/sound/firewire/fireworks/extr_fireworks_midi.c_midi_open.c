
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_efw {int mutex; int substreams_counter; } ;
struct TYPE_2__ {struct snd_efw* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_efw_stream_lock_release (struct snd_efw*) ;
 int snd_efw_stream_lock_try (struct snd_efw*) ;
 int snd_efw_stream_reserve_duplex (struct snd_efw*,int ) ;
 int snd_efw_stream_start_duplex (struct snd_efw*) ;

__attribute__((used)) static int midi_open(struct snd_rawmidi_substream *substream)
{
 struct snd_efw *efw = substream->rmidi->private_data;
 int err;

 err = snd_efw_stream_lock_try(efw);
 if (err < 0)
  goto end;

 mutex_lock(&efw->mutex);
 err = snd_efw_stream_reserve_duplex(efw, 0);
 if (err >= 0) {
  ++efw->substreams_counter;
  err = snd_efw_stream_start_duplex(efw);
  if (err < 0)
   --efw->substreams_counter;
 }
 mutex_unlock(&efw->mutex);
 if (err < 0)
  snd_efw_stream_lock_release(efw);
end:
 return err;
}
