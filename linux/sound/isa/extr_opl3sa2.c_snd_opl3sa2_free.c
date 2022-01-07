
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3sa2 {scalar_t__ irq; int res_port; } ;
struct snd_card {struct snd_opl3sa2* private_data; } ;


 int free_irq (scalar_t__,struct snd_card*) ;
 int release_and_free_resource (int ) ;

__attribute__((used)) static void snd_opl3sa2_free(struct snd_card *card)
{
 struct snd_opl3sa2 *chip = card->private_data;
 if (chip->irq >= 0)
  free_irq(chip->irq, card);
 release_and_free_resource(chip->res_port);
}
