
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_motu* private_data; } ;
struct snd_motu {int tx_stream; } ;
typedef int snd_pcm_uframes_t ;


 int amdtp_stream_pcm_pointer (int *) ;

__attribute__((used)) static snd_pcm_uframes_t capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_motu *motu = substream->private_data;

 return amdtp_stream_pcm_pointer(&motu->tx_stream);
}
