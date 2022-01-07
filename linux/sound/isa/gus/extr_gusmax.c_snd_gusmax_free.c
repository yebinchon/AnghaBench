
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gusmax {scalar_t__ irq; } ;
struct snd_card {struct snd_gusmax* private_data; } ;


 int free_irq (scalar_t__,void*) ;

__attribute__((used)) static void snd_gusmax_free(struct snd_card *card)
{
 struct snd_gusmax *maxcard = card->private_data;

 if (maxcard == ((void*)0))
  return;
 if (maxcard->irq >= 0)
  free_irq(maxcard->irq, (void *)maxcard);
}
