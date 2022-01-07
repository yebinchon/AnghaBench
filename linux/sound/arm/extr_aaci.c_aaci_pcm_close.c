
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; struct aaci* private_data; } ;
struct aaci_runtime {int cr; int * substream; } ;
struct aaci {int irq_lock; TYPE_1__* dev; int users; } ;
struct TYPE_4__ {struct aaci_runtime* private_data; } ;
struct TYPE_3__ {int * irq; } ;


 int CR_EN ;
 int WARN_ON (int) ;
 int free_irq (int ,struct aaci*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int aaci_pcm_close(struct snd_pcm_substream *substream)
{
 struct aaci *aaci = substream->private_data;
 struct aaci_runtime *aacirun = substream->runtime->private_data;

 WARN_ON(aacirun->cr & CR_EN);

 aacirun->substream = ((void*)0);

 mutex_lock(&aaci->irq_lock);
 if (!--aaci->users)
  free_irq(aaci->dev->irq[0], aaci);
 mutex_unlock(&aaci->irq_lock);

 return 0;
}
