
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_dg00x {int mutex; int substreams_counter; } ;
struct TYPE_2__ {struct snd_dg00x* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_dg00x_stream_lock_release (struct snd_dg00x*) ;
 int snd_dg00x_stream_lock_try (struct snd_dg00x*) ;
 int snd_dg00x_stream_reserve_duplex (struct snd_dg00x*,int ) ;
 int snd_dg00x_stream_start_duplex (struct snd_dg00x*) ;

__attribute__((used)) static int midi_open(struct snd_rawmidi_substream *substream)
{
 struct snd_dg00x *dg00x = substream->rmidi->private_data;
 int err;

 err = snd_dg00x_stream_lock_try(dg00x);
 if (err < 0)
  return err;

 mutex_lock(&dg00x->mutex);
 err = snd_dg00x_stream_reserve_duplex(dg00x, 0);
 if (err >= 0) {
  ++dg00x->substreams_counter;
  err = snd_dg00x_stream_start_duplex(dg00x);
  if (err < 0)
   --dg00x->substreams_counter;
 }
 mutex_unlock(&dg00x->mutex);
 if (err < 0)
  snd_dg00x_stream_lock_release(dg00x);

 return err;
}
