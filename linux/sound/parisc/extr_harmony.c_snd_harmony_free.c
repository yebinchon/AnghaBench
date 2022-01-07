
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; } ;
struct snd_harmony {scalar_t__ irq; int iobase; TYPE_1__ sdma; TYPE_1__ gdma; } ;


 int free_irq (scalar_t__,struct snd_harmony*) ;
 int iounmap (int ) ;
 int kfree (struct snd_harmony*) ;
 int snd_dma_free_pages (TYPE_1__*) ;

__attribute__((used)) static int
snd_harmony_free(struct snd_harmony *h)
{
        if (h->gdma.addr)
                snd_dma_free_pages(&h->gdma);
        if (h->sdma.addr)
                snd_dma_free_pages(&h->sdma);

 if (h->irq >= 0)
  free_irq(h->irq, h);

 iounmap(h->iobase);
 kfree(h);
 return 0;
}
