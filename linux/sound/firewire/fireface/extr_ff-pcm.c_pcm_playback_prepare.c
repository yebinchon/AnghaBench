
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct snd_ff* private_data; } ;
struct snd_pcm_runtime {int rate; } ;
struct snd_ff {int mutex; int rx_stream; } ;


 int amdtp_stream_pcm_prepare (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ff_stream_start_duplex (struct snd_ff*,int ) ;

__attribute__((used)) static int pcm_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ff *ff = substream->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 mutex_lock(&ff->mutex);

 err = snd_ff_stream_start_duplex(ff, runtime->rate);
 if (err >= 0)
  amdtp_stream_pcm_prepare(&ff->rx_stream);

 mutex_unlock(&ff->mutex);

 return err;
}
