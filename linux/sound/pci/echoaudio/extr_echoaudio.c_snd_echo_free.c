
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {scalar_t__ irq; int pci; int iores; int dsp_registers; int commpage_dma_buf; scalar_t__ comm_page; } ;


 int free_firmware_cache (struct echoaudio*) ;
 int free_irq (scalar_t__,struct echoaudio*) ;
 int iounmap (int ) ;
 int kfree (struct echoaudio*) ;
 int pci_disable_device (int ) ;
 int release_and_free_resource (int ) ;
 int rest_in_peace (struct echoaudio*) ;
 int snd_dma_free_pages (int *) ;

__attribute__((used)) static int snd_echo_free(struct echoaudio *chip)
{
 if (chip->comm_page)
  rest_in_peace(chip);

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);

 if (chip->comm_page)
  snd_dma_free_pages(&chip->commpage_dma_buf);

 iounmap(chip->dsp_registers);
 release_and_free_resource(chip->iores);
 pci_disable_device(chip->pci);


 free_firmware_cache(chip);
 kfree(chip);
 return 0;
}
