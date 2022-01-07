
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_bebob* private_data; } ;
struct snd_bebob {int rx_stream; } ;


 int amdtp_stream_pcm_ack (int *) ;

__attribute__((used)) static int pcm_playback_ack(struct snd_pcm_substream *substream)
{
 struct snd_bebob *bebob = substream->private_data;

 return amdtp_stream_pcm_ack(&bebob->rx_stream);
}
