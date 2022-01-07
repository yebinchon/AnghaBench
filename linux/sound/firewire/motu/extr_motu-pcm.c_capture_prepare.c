
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_motu* private_data; } ;
struct snd_motu {int tx_stream; int mutex; } ;


 int amdtp_stream_pcm_prepare (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_motu_stream_start_duplex (struct snd_motu*) ;

__attribute__((used)) static int capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_motu *motu = substream->private_data;
 int err;

 mutex_lock(&motu->mutex);
 err = snd_motu_stream_start_duplex(motu);
 mutex_unlock(&motu->mutex);
 if (err >= 0)
  amdtp_stream_pcm_prepare(&motu->tx_stream);

 return 0;
}
