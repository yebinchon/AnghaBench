
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int hw_buf; int * substream; } ;
struct snd_cs46xx {int (* active_ctrl ) (struct snd_cs46xx*,int) ;TYPE_1__ capt; } ;


 int snd_dma_free_pages (int *) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_cs46xx*,int) ;

__attribute__((used)) static int snd_cs46xx_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);

 chip->capt.substream = ((void*)0);
 snd_dma_free_pages(&chip->capt.hw_buf);
 chip->active_ctrl(chip, -1);

 return 0;
}
