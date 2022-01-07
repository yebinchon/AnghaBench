
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_at73c213 {TYPE_1__* ssc; int * substream; } ;
struct TYPE_2__ {int clk; } ;


 int clk_disable (int ) ;
 struct snd_at73c213* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_at73c213_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_at73c213 *chip = snd_pcm_substream_chip(substream);
 chip->substream = ((void*)0);
 clk_disable(chip->ssc->clk);
 return 0;
}
