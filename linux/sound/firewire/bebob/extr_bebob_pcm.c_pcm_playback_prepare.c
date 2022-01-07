
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_bebob* private_data; } ;
struct snd_bebob {int rx_stream; } ;


 int amdtp_stream_pcm_prepare (int *) ;
 int snd_bebob_stream_start_duplex (struct snd_bebob*) ;

__attribute__((used)) static int
pcm_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_bebob *bebob = substream->private_data;
 int err;

 err = snd_bebob_stream_start_duplex(bebob);
 if (err >= 0)
  amdtp_stream_pcm_prepare(&bebob->rx_stream);

 return err;
}
