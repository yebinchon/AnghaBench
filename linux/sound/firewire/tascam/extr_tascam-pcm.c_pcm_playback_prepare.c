
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int mutex; int rx_stream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct snd_tscm* private_data; } ;
struct snd_pcm_runtime {int rate; } ;


 int amdtp_stream_pcm_prepare (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_tscm_stream_start_duplex (struct snd_tscm*,int ) ;

__attribute__((used)) static int pcm_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_tscm *tscm = substream->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 mutex_lock(&tscm->mutex);

 err = snd_tscm_stream_start_duplex(tscm, runtime->rate);
 if (err >= 0)
  amdtp_stream_pcm_prepare(&tscm->rx_stream);

 mutex_unlock(&tscm->mutex);

 return err;
}
