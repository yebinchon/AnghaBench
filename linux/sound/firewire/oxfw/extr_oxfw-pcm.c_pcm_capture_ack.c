
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_oxfw* private_data; } ;
struct snd_oxfw {int tx_stream; } ;


 int amdtp_stream_pcm_ack (int *) ;

__attribute__((used)) static int pcm_capture_ack(struct snd_pcm_substream *substream)
{
 struct snd_oxfw *oxfw = substream->private_data;

 return amdtp_stream_pcm_ack(&oxfw->tx_stream);
}
