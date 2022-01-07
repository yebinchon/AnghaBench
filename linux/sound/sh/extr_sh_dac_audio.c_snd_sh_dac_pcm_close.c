
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sh_dac {TYPE_1__* pdata; int * substream; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int (* stop ) (TYPE_1__*) ;} ;


 int dac_audio_stop_timer (struct snd_sh_dac*) ;
 struct snd_sh_dac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int snd_sh_dac_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_sh_dac *chip = snd_pcm_substream_chip(substream);

 chip->substream = ((void*)0);

 dac_audio_stop_timer(chip);
 chip->pdata->stop(chip->pdata);

 return 0;
}
