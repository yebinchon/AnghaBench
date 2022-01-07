
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lola {TYPE_1__* pcm; } ;
struct TYPE_2__ {int bdl; } ;


 int snd_dma_free_pages (int *) ;

void lola_free_pcm(struct lola *chip)
{
 snd_dma_free_pages(&chip->pcm[0].bdl);
 snd_dma_free_pages(&chip->pcm[1].bdl);
}
