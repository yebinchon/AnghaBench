
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_oxfw {int mutex; int substreams_count; } ;
struct TYPE_2__ {struct snd_oxfw* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_oxfw_stream_lock_release (struct snd_oxfw*) ;
 int snd_oxfw_stream_stop_duplex (struct snd_oxfw*) ;

__attribute__((used)) static int midi_playback_close(struct snd_rawmidi_substream *substream)
{
 struct snd_oxfw *oxfw = substream->rmidi->private_data;

 mutex_lock(&oxfw->mutex);

 --oxfw->substreams_count;
 snd_oxfw_stream_stop_duplex(oxfw);

 mutex_unlock(&oxfw->mutex);

 snd_oxfw_stream_lock_release(oxfw);
 return 0;
}
