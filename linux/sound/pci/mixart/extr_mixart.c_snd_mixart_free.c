
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * area; } ;
struct mixart_mgr {unsigned int num_cards; scalar_t__ irq; TYPE_4__* pci; TYPE_3__ bufferinfo; TYPE_3__ flowinfo; TYPE_2__* mem; scalar_t__ dsp_loaded; TYPE_1__** chip; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {int virt; } ;
struct TYPE_6__ {int card; } ;


 int dev_dbg (int *,char*) ;
 int free_irq (scalar_t__,struct mixart_mgr*) ;
 int iounmap (int ) ;
 int kfree (struct mixart_mgr*) ;
 int pci_disable_device (TYPE_4__*) ;
 int pci_release_regions (TYPE_4__*) ;
 int snd_card_free (int ) ;
 int snd_dma_free_pages (TYPE_3__*) ;
 int snd_mixart_exit_mailbox (struct mixart_mgr*) ;
 int snd_mixart_reset_board (struct mixart_mgr*) ;

__attribute__((used)) static int snd_mixart_free(struct mixart_mgr *mgr)
{
 unsigned int i;

 for (i = 0; i < mgr->num_cards; i++) {
  if (mgr->chip[i])
   snd_card_free(mgr->chip[i]->card);
 }


 snd_mixart_exit_mailbox(mgr);


 if (mgr->irq >= 0)
  free_irq(mgr->irq, mgr);


 if(mgr->dsp_loaded) {
  snd_mixart_reset_board(mgr);
  dev_dbg(&mgr->pci->dev, "reset miXart !\n");
 }


 for (i = 0; i < 2; ++i)
  iounmap(mgr->mem[i].virt);

 pci_release_regions(mgr->pci);


 if(mgr->flowinfo.area) {
  snd_dma_free_pages(&mgr->flowinfo);
  mgr->flowinfo.area = ((void*)0);
 }

 if(mgr->bufferinfo.area) {
  snd_dma_free_pages(&mgr->bufferinfo);
  mgr->bufferinfo.area = ((void*)0);
 }

 pci_disable_device(mgr->pci);
 kfree(mgr);
 return 0;
}
