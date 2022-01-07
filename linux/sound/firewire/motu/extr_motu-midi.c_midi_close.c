
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_motu {int mutex; int substreams_counter; } ;
struct TYPE_2__ {struct snd_motu* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_motu_stream_lock_release (struct snd_motu*) ;
 int snd_motu_stream_stop_duplex (struct snd_motu*) ;

__attribute__((used)) static int midi_close(struct snd_rawmidi_substream *substream)
{
 struct snd_motu *motu = substream->rmidi->private_data;

 mutex_lock(&motu->mutex);

 --motu->substreams_counter;
 snd_motu_stream_stop_duplex(motu);

 mutex_unlock(&motu->mutex);

 snd_motu_stream_lock_release(motu);
 return 0;
}
