
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
 int snd_bebob_stream_stop_duplex (struct snd_bebob*) ;

__attribute__((used)) static int midi_close(struct snd_rawmidi_substream *substream)
{
 struct snd_bebob *bebob = substream->rmidi->private_data;

 mutex_lock(&bebob->mutex);
 bebob->substreams_counter--;
 snd_bebob_stream_stop_duplex(bebob);
 mutex_unlock(&bebob->mutex);

 snd_bebob_stream_lock_release(bebob);
 return 0;
}
