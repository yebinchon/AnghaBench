
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; int ioctl; int open; } ;
struct snd_hwdep {struct snd_emu10k1* private_data; TYPE_1__ ops; int iface; int name; } ;
struct snd_emu10k1 {int card; } ;


 int SNDRV_HWDEP_IFACE_EMU10K1 ;
 int snd_emu10k1_fx8010_ioctl ;
 int snd_emu10k1_fx8010_open ;
 int snd_emu10k1_fx8010_release ;
 int snd_hwdep_new (int ,char*,int,struct snd_hwdep**) ;
 int strcpy (int ,char*) ;

int snd_emu10k1_fx8010_new(struct snd_emu10k1 *emu, int device)
{
 struct snd_hwdep *hw;
 int err;

 if ((err = snd_hwdep_new(emu->card, "FX8010", device, &hw)) < 0)
  return err;
 strcpy(hw->name, "EMU10K1 (FX8010)");
 hw->iface = SNDRV_HWDEP_IFACE_EMU10K1;
 hw->ops.open = snd_emu10k1_fx8010_open;
 hw->ops.ioctl = snd_emu10k1_fx8010_ioctl;
 hw->ops.release = snd_emu10k1_fx8010_release;
 hw->private_data = emu;
 return 0;
}
