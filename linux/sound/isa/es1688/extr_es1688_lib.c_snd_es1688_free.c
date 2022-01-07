
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {scalar_t__ hardware; scalar_t__ irq; scalar_t__ dma8; int res_port; } ;


 scalar_t__ ES1688_HW_UNDEF ;
 int disable_dma (scalar_t__) ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,void*) ;
 int release_and_free_resource (int ) ;
 int snd_es1688_init (struct snd_es1688*,int ) ;

__attribute__((used)) static int snd_es1688_free(struct snd_es1688 *chip)
{
 if (chip->hardware != ES1688_HW_UNDEF)
  snd_es1688_init(chip, 0);
 release_and_free_resource(chip->res_port);
 if (chip->irq >= 0)
  free_irq(chip->irq, (void *) chip);
 if (chip->dma8 >= 0) {
  disable_dma(chip->dma8);
  free_dma(chip->dma8);
 }
 return 0;
}
