
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interwave {scalar_t__ irq; int i2c_res; } ;
struct snd_card {struct snd_interwave* private_data; } ;


 int free_irq (scalar_t__,void*) ;
 int release_and_free_resource (int ) ;

__attribute__((used)) static void snd_interwave_free(struct snd_card *card)
{
 struct snd_interwave *iwcard = card->private_data;

 if (iwcard == ((void*)0))
  return;



 if (iwcard->irq >= 0)
  free_irq(iwcard->irq, (void *)iwcard);
}
