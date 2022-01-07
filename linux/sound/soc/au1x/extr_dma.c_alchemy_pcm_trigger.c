
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct audio_stream {int dummy; } ;


 int EINVAL ;


 int au1000_dma_start (struct audio_stream*) ;
 int au1000_dma_stop (struct audio_stream*) ;
 struct audio_stream* ss_to_as (struct snd_pcm_substream*) ;

__attribute__((used)) static int alchemy_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct audio_stream *stream = ss_to_as(substream);
 int err = 0;

 switch (cmd) {
 case 129:
  au1000_dma_start(stream);
  break;
 case 128:
  au1000_dma_stop(stream);
  break;
 default:
  err = -EINVAL;
  break;
 }
 return err;
}
