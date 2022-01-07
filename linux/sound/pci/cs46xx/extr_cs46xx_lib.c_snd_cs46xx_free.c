
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx_region {scalar_t__ resource; int remap_addr; } ;
struct TYPE_2__ {struct snd_cs46xx_region* idx; } ;
struct snd_cs46xx {int amplifier; scalar_t__ irq; int pci; struct snd_cs46xx* saved_regs; int ba1; int * modules; int * dsp_spos_instance; TYPE_1__ region; int (* active_ctrl ) (struct snd_cs46xx*,int) ;int (* amplifier_ctrl ) (struct snd_cs46xx*,int) ;} ;


 int CS46XX_DSP_MODULES ;
 int EINVAL ;
 int cs46xx_dsp_spos_destroy (struct snd_cs46xx*) ;
 int free_irq (scalar_t__,struct snd_cs46xx*) ;
 int free_module_desc (int ) ;
 int iounmap (int ) ;
 int kfree (struct snd_cs46xx*) ;
 int pci_disable_device (int ) ;
 int release_and_free_resource (scalar_t__) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_cs46xx_hw_stop (struct snd_cs46xx*) ;
 int snd_cs46xx_proc_done (struct snd_cs46xx*) ;
 int snd_cs46xx_remove_gameport (struct snd_cs46xx*) ;
 int stub1 (struct snd_cs46xx*,int) ;
 int stub2 (struct snd_cs46xx*,int) ;
 int stub3 (struct snd_cs46xx*,int) ;
 int vfree (int ) ;

__attribute__((used)) static int snd_cs46xx_free(struct snd_cs46xx *chip)
{
 int idx;

 if (snd_BUG_ON(!chip))
  return -EINVAL;

 if (chip->active_ctrl)
  chip->active_ctrl(chip, 1);

 snd_cs46xx_remove_gameport(chip);

 if (chip->amplifier_ctrl)
  chip->amplifier_ctrl(chip, -chip->amplifier);

 snd_cs46xx_proc_done(chip);

 if (chip->region.idx[0].resource)
  snd_cs46xx_hw_stop(chip);

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);

 if (chip->active_ctrl)
  chip->active_ctrl(chip, -chip->amplifier);

 for (idx = 0; idx < 5; idx++) {
  struct snd_cs46xx_region *region = &chip->region.idx[idx];

  iounmap(region->remap_addr);
  release_and_free_resource(region->resource);
 }
 vfree(chip->ba1);






 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
