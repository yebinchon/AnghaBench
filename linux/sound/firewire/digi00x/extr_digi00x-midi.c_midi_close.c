
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
 int snd_dg00x_stream_stop_duplex (struct snd_dg00x*) ;

__attribute__((used)) static int midi_close(struct snd_rawmidi_substream *substream)
{
 struct snd_dg00x *dg00x = substream->rmidi->private_data;

 mutex_lock(&dg00x->mutex);
 --dg00x->substreams_counter;
 snd_dg00x_stream_stop_duplex(dg00x);
 mutex_unlock(&dg00x->mutex);

 snd_dg00x_stream_lock_release(dg00x);
 return 0;
}
