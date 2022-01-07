
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; scalar_t__ irq; int pci; scalar_t__ port; int iobase; int fw_uploaded; int firmware; int midi_tasklet; } ;


 int HDSP_AudioInterruptEnable ;
 int HDSP_Midi0InterruptEnable ;
 int HDSP_Midi1InterruptEnable ;
 int HDSP_Start ;
 int HDSP_controlRegister ;
 int free_irq (scalar_t__,void*) ;
 int hdsp_write (struct hdsp*,int ,int) ;
 int iounmap (int ) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int release_firmware (int ) ;
 int snd_hdsp_free_buffers (struct hdsp*) ;
 int tasklet_kill (int *) ;
 int vfree (int ) ;

__attribute__((used)) static int snd_hdsp_free(struct hdsp *hdsp)
{
 if (hdsp->port) {

  tasklet_kill(&hdsp->midi_tasklet);
  hdsp->control_register &= ~(HDSP_Start|HDSP_AudioInterruptEnable|HDSP_Midi0InterruptEnable|HDSP_Midi1InterruptEnable);
  hdsp_write (hdsp, HDSP_controlRegister, hdsp->control_register);
 }

 if (hdsp->irq >= 0)
  free_irq(hdsp->irq, (void *)hdsp);

 snd_hdsp_free_buffers(hdsp);

 release_firmware(hdsp->firmware);
 vfree(hdsp->fw_uploaded);
 iounmap(hdsp->iobase);

 if (hdsp->port)
  pci_release_regions(hdsp->pci);

 pci_disable_device(hdsp->pci);
 return 0;
}
