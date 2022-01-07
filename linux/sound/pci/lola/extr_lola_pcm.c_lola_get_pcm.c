
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t stream; } ;
struct lola_pcm {int dummy; } ;
struct lola {struct lola_pcm* pcm; } ;


 struct lola* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static struct lola_pcm *lola_get_pcm(struct snd_pcm_substream *substream)
{
 struct lola *chip = snd_pcm_substream_chip(substream);
 return &chip->pcm[substream->stream];
}
