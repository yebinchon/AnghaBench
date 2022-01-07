
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; int format; struct gus_pcm_private* private_data; } ;
struct gus_pcm_private {int dummy; } ;


 int bytes_to_samples (struct snd_pcm_runtime*,unsigned long) ;
 int get_bpos (struct gus_pcm_private*,int,unsigned long,unsigned int) ;
 int playback_copy_ack (struct snd_pcm_substream*,int,unsigned int) ;
 int snd_pcm_format_set_silence (int ,scalar_t__,int ) ;

__attribute__((used)) static int snd_gf1_pcm_playback_silence(struct snd_pcm_substream *substream,
     int voice, unsigned long pos,
     unsigned long count)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct gus_pcm_private *pcmp = runtime->private_data;
 unsigned int len = count;
 int bpos;

 bpos = get_bpos(pcmp, voice, pos, len);
 if (bpos < 0)
  return pos;
 snd_pcm_format_set_silence(runtime->format, runtime->dma_area + bpos,
       bytes_to_samples(runtime, count));
 return playback_copy_ack(substream, bpos, len);
}
