
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; int ioctl; int open; } ;
struct snd_hwdep {struct snd_card_asihpi* private_data; TYPE_1__ ops; int iface; int name; } ;
struct snd_card_asihpi {int card; } ;


 int SNDRV_HWDEP_IFACE_LAST ;
 int snd_asihpi_hpi_ioctl ;
 int snd_asihpi_hpi_open ;
 int snd_asihpi_hpi_release ;
 int snd_hwdep_new (int ,char*,int,struct snd_hwdep**) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_asihpi_hpi_new(struct snd_card_asihpi *asihpi, int device)
{
 struct snd_hwdep *hw;
 int err;

 err = snd_hwdep_new(asihpi->card, "HPI", device, &hw);
 if (err < 0)
  return err;
 strcpy(hw->name, "asihpi (HPI)");
 hw->iface = SNDRV_HWDEP_IFACE_LAST;
 hw->ops.open = snd_asihpi_hpi_open;
 hw->ops.ioctl = snd_asihpi_hpi_ioctl;
 hw->ops.release = snd_asihpi_hpi_release;
 hw->private_data = asihpi;
 return 0;
}
