
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dmatp; int dmatb; } ;


 int snd_dma_free_pages (int *) ;
 int snd_sof_release_trace (struct snd_sof_dev*) ;

void snd_sof_free_trace(struct snd_sof_dev *sdev)
{
 snd_sof_release_trace(sdev);

 snd_dma_free_pages(&sdev->dmatb);
 snd_dma_free_pages(&sdev->dmatp);
}
