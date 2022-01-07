
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_oxfw* private_data; } ;
struct snd_oxfw {int rx_stream; int mutex; } ;


 int amdtp_stream_pcm_prepare (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_oxfw_stream_start_duplex (struct snd_oxfw*) ;

__attribute__((used)) static int pcm_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_oxfw *oxfw = substream->private_data;
 int err;

 mutex_lock(&oxfw->mutex);
 err = snd_oxfw_stream_start_duplex(oxfw);
 mutex_unlock(&oxfw->mutex);
 if (err < 0)
  goto end;

 amdtp_stream_pcm_prepare(&oxfw->rx_stream);
end:
 return err;
}
