
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_m3 {int num_substreams; scalar_t__ irq; int pci; int assp_minisrc_image; int assp_kernel_image; scalar_t__ iobase; int suspend_mem; struct snd_m3* substreams; int reg_lock; scalar_t__ substream; scalar_t__ running; scalar_t__ input_dev; int hwvol_work; } ;
struct m3_dma {int num_substreams; scalar_t__ irq; int pci; int assp_minisrc_image; int assp_kernel_image; scalar_t__ iobase; int suspend_mem; struct m3_dma* substreams; int reg_lock; scalar_t__ substream; scalar_t__ running; scalar_t__ input_dev; int hwvol_work; } ;


 scalar_t__ HOST_INT_CTRL ;
 int cancel_work_sync (int *) ;
 int free_irq (scalar_t__,struct snd_m3*) ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct snd_m3*) ;
 int outw (int ,scalar_t__) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int release_firmware (int ) ;
 int snd_m3_pcm_stop (struct snd_m3*,struct snd_m3*,scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vfree (int ) ;

__attribute__((used)) static int snd_m3_free(struct snd_m3 *chip)
{
 struct m3_dma *s;
 int i;

 cancel_work_sync(&chip->hwvol_work);





 if (chip->substreams) {
  spin_lock_irq(&chip->reg_lock);
  for (i = 0; i < chip->num_substreams; i++) {
   s = &chip->substreams[i];

   if (s->substream && s->running)
    snd_m3_pcm_stop(chip, s, s->substream);
  }
  spin_unlock_irq(&chip->reg_lock);
  kfree(chip->substreams);
 }
 if (chip->iobase) {
  outw(0, chip->iobase + HOST_INT_CTRL);
 }





 if (chip->irq >= 0)
  free_irq(chip->irq, chip);

 if (chip->iobase)
  pci_release_regions(chip->pci);

 release_firmware(chip->assp_kernel_image);
 release_firmware(chip->assp_minisrc_image);

 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
