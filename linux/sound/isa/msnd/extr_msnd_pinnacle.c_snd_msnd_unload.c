
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_msnd {int irq; int io; int base; int mappedbase; } ;
struct snd_card {struct snd_msnd* private_data; } ;


 int BUFFSIZE ;
 int DSP_NUMIO ;
 int free_irq (int ,struct snd_msnd*) ;
 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;
 int release_region (int ,int ) ;
 int snd_card_free (struct snd_card*) ;

__attribute__((used)) static void snd_msnd_unload(struct snd_card *card)
{
 struct snd_msnd *chip = card->private_data;

 iounmap(chip->mappedbase);
 release_mem_region(chip->base, BUFFSIZE);
 release_region(chip->io, DSP_NUMIO);
 free_irq(chip->irq, chip);
 snd_card_free(card);
}
