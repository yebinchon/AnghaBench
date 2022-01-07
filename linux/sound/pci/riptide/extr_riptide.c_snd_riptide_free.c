
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_riptide {scalar_t__ irq; int res_port; int fw_entry; struct snd_riptide* cif; int hwport; } ;
struct cmdif {scalar_t__ irq; int res_port; int fw_entry; struct cmdif* cif; int hwport; } ;


 int SET_GRESET (int ) ;
 int UNSET_GRESET (int ) ;
 int free_irq (scalar_t__,struct snd_riptide*) ;
 int kfree (struct snd_riptide*) ;
 int release_and_free_resource (int ) ;
 int release_firmware (int ) ;
 int udelay (int) ;

__attribute__((used)) static int snd_riptide_free(struct snd_riptide *chip)
{
 struct cmdif *cif;

 if (!chip)
  return 0;

 if ((cif = chip->cif)) {
  SET_GRESET(cif->hwport);
  udelay(100);
  UNSET_GRESET(cif->hwport);
  kfree(chip->cif);
 }
 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 release_firmware(chip->fw_entry);
 release_and_free_resource(chip->res_port);
 kfree(chip);
 return 0;
}
