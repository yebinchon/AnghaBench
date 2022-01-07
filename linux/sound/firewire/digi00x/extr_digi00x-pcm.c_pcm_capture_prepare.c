
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_dg00x* private_data; } ;
struct snd_dg00x {int mutex; int tx_stream; } ;


 int amdtp_stream_pcm_prepare (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_dg00x_stream_start_duplex (struct snd_dg00x*) ;

__attribute__((used)) static int pcm_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_dg00x *dg00x = substream->private_data;
 int err;

 mutex_lock(&dg00x->mutex);

 err = snd_dg00x_stream_start_duplex(dg00x);
 if (err >= 0)
  amdtp_stream_pcm_prepare(&dg00x->tx_stream);

 mutex_unlock(&dg00x->mutex);

 return err;
}
