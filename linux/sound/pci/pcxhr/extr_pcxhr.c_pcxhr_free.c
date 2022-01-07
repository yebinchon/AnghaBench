
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * area; } ;
struct pcxhr_mgr {unsigned int num_cards; scalar_t__ irq; TYPE_3__* pci; struct pcxhr_mgr* prmh; TYPE_2__ hostport; scalar_t__ dsp_loaded; TYPE_1__** chip; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {int card; } ;


 int dev_dbg (int *,char*) ;
 int free_irq (scalar_t__,struct pcxhr_mgr*) ;
 int kfree (struct pcxhr_mgr*) ;
 int pci_disable_device (TYPE_3__*) ;
 int pci_release_regions (TYPE_3__*) ;
 int pcxhr_reset_board (struct pcxhr_mgr*) ;
 int snd_card_free (int ) ;
 int snd_dma_free_pages (TYPE_2__*) ;

__attribute__((used)) static int pcxhr_free(struct pcxhr_mgr *mgr)
{
 unsigned int i;

 for (i = 0; i < mgr->num_cards; i++) {
  if (mgr->chip[i])
   snd_card_free(mgr->chip[i]->card);
 }


 if(mgr->dsp_loaded) {
  pcxhr_reset_board(mgr);
  dev_dbg(&mgr->pci->dev, "reset pcxhr !\n");
 }


 if (mgr->irq >= 0)
  free_irq(mgr->irq, mgr);

 pci_release_regions(mgr->pci);


 if (mgr->hostport.area) {
  snd_dma_free_pages(&mgr->hostport);
  mgr->hostport.area = ((void*)0);
 }

 kfree(mgr->prmh);

 pci_disable_device(mgr->pci);
 kfree(mgr);
 return 0;
}
