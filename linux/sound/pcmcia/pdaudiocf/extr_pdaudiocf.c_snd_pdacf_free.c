
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {size_t index; int * card; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int dummy; } ;


 int ** card_list ;
 int kfree (struct snd_pdacf*) ;
 int pdacf_release (struct pcmcia_device*) ;

__attribute__((used)) static int snd_pdacf_free(struct snd_pdacf *pdacf)
{
 struct pcmcia_device *link = pdacf->p_dev;

 pdacf_release(link);

 card_list[pdacf->index] = ((void*)0);
 pdacf->card = ((void*)0);

 kfree(pdacf);
 return 0;
}
