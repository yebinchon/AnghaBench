
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_motu* private_data; } ;
struct snd_motu {int rx_stream; } ;


 int amdtp_stream_pcm_ack (int *) ;

__attribute__((used)) static int playback_ack(struct snd_pcm_substream *substream)
{
 struct snd_motu *motu = substream->private_data;

 return amdtp_stream_pcm_ack(&motu->rx_stream);
}
