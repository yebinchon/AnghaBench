
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opti9xx {scalar_t__ irq; int res_mc_base; int res_mc_indir; } ;
struct snd_card {struct snd_opti9xx* private_data; } ;


 int disable_irq (scalar_t__) ;
 int free_irq (scalar_t__,struct snd_opti9xx*) ;
 int release_and_free_resource (int ) ;

__attribute__((used)) static void snd_card_opti9xx_free(struct snd_card *card)
{
 struct snd_opti9xx *chip = card->private_data;

 if (chip) {







  release_and_free_resource(chip->res_mc_base);
 }
}
