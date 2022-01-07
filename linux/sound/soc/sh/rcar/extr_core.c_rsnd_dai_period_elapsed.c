
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rsnd_dai_stream {struct snd_pcm_substream* substream; } ;


 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

void rsnd_dai_period_elapsed(struct rsnd_dai_stream *io)
{
 struct snd_pcm_substream *substream = io->substream;
 snd_pcm_period_elapsed(substream);
}
