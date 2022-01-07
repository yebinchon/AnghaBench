
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {scalar_t__ irq; scalar_t__ dma1; scalar_t__ dma2; int res_port; } ;


 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,void*) ;
 int release_and_free_resource (int ) ;
 int snd_dma_disable (scalar_t__) ;

__attribute__((used)) static int snd_ad1816a_free(struct snd_ad1816a *chip)
{
 release_and_free_resource(chip->res_port);
 if (chip->irq >= 0)
  free_irq(chip->irq, (void *) chip);
 if (chip->dma1 >= 0) {
  snd_dma_disable(chip->dma1);
  free_dma(chip->dma1);
 }
 if (chip->dma2 >= 0) {
  snd_dma_disable(chip->dma2);
  free_dma(chip->dma2);
 }
 return 0;
}
