
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {int irq; int pci; int capture_suspend_buffer; int playback_suspend_buffer; scalar_t__ port; int * iobase; int areg; } ;


 int RME96_AR_DAC_EN ;
 int RME96_IO_ADDITIONAL_REG ;
 int RME96_STOP_BOTH ;
 int free_irq (int,void*) ;
 int iounmap (int *) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_rme96_trigger (struct rme96*,int ) ;
 int vfree (int ) ;
 int writel (int ,int *) ;

__attribute__((used)) static void
snd_rme96_free(void *private_data)
{
 struct rme96 *rme96 = (struct rme96 *)private_data;

 if (!rme96)
         return;

 if (rme96->irq >= 0) {
  snd_rme96_trigger(rme96, RME96_STOP_BOTH);
  rme96->areg &= ~RME96_AR_DAC_EN;
  writel(rme96->areg, rme96->iobase + RME96_IO_ADDITIONAL_REG);
  free_irq(rme96->irq, (void *)rme96);
  rme96->irq = -1;
 }
 if (rme96->iobase) {
  iounmap(rme96->iobase);
  rme96->iobase = ((void*)0);
 }
 if (rme96->port) {
  pci_release_regions(rme96->pci);
  rme96->port = 0;
 }




 pci_disable_device(rme96->pci);
}
