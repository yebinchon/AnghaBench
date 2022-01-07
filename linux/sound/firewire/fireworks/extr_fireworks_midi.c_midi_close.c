
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
 int snd_efw_stream_stop_duplex (struct snd_efw*) ;

__attribute__((used)) static int midi_close(struct snd_rawmidi_substream *substream)
{
 struct snd_efw *efw = substream->rmidi->private_data;

 mutex_lock(&efw->mutex);
 --efw->substreams_counter;
 snd_efw_stream_stop_duplex(efw);
 mutex_unlock(&efw->mutex);

 snd_efw_stream_lock_release(efw);
 return 0;
}
