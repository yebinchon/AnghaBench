
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_card {scalar_t__ private_data; } ;
struct TYPE_3__ {scalar_t__ irq; int res_base; } ;
struct TYPE_4__ {TYPE_1__ wavefront; } ;
typedef TYPE_2__ snd_wavefront_card_t ;


 int free_irq (scalar_t__,void*) ;
 int release_and_free_resource (int ) ;

__attribute__((used)) static void
snd_wavefront_free(struct snd_card *card)
{
 snd_wavefront_card_t *acard = (snd_wavefront_card_t *)card->private_data;

 if (acard) {
  release_and_free_resource(acard->wavefront.res_base);
  if (acard->wavefront.irq > 0)
   free_irq(acard->wavefront.irq, (void *)acard);
 }
}
