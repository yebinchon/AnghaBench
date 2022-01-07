
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_efw* private_data; } ;
struct snd_efw {int tx_stream; } ;


 int amdtp_stream_pcm_prepare (int *) ;
 int snd_efw_stream_start_duplex (struct snd_efw*) ;

__attribute__((used)) static int pcm_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_efw *efw = substream->private_data;
 int err;

 err = snd_efw_stream_start_duplex(efw);
 if (err >= 0)
  amdtp_stream_pcm_prepare(&efw->tx_stream);

 return err;
}
