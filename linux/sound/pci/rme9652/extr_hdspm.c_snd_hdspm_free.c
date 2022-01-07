
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; scalar_t__ irq; int pci; scalar_t__ port; int iobase; int mixer; } ;


 int HDSPM_AudioInterruptEnable ;
 int HDSPM_Midi0InterruptEnable ;
 int HDSPM_Midi1InterruptEnable ;
 int HDSPM_Midi2InterruptEnable ;
 int HDSPM_Midi3InterruptEnable ;
 int HDSPM_Start ;
 int HDSPM_controlRegister ;
 int free_irq (scalar_t__,void*) ;
 int hdspm_write (struct hdspm*,int ,int) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;

__attribute__((used)) static int snd_hdspm_free(struct hdspm * hdspm)
{

 if (hdspm->port) {


  hdspm->control_register &=
      ~(HDSPM_Start | HDSPM_AudioInterruptEnable |
        HDSPM_Midi0InterruptEnable | HDSPM_Midi1InterruptEnable |
        HDSPM_Midi2InterruptEnable | HDSPM_Midi3InterruptEnable);
  hdspm_write(hdspm, HDSPM_controlRegister,
       hdspm->control_register);
 }

 if (hdspm->irq >= 0)
  free_irq(hdspm->irq, (void *) hdspm);

 kfree(hdspm->mixer);
 iounmap(hdspm->iobase);

 if (hdspm->port)
  pci_release_regions(hdspm->pci);

 pci_disable_device(hdspm->pci);
 return 0;
}
