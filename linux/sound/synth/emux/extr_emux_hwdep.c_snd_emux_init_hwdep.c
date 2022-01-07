
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ioctl_compat; void* ioctl; } ;
struct snd_hwdep {int exclusive; struct snd_emux* private_data; TYPE_1__ ops; int iface; int name; } ;
struct snd_emux {int card; struct snd_hwdep* hwdep; int hwdep_idx; } ;


 int SNDRV_EMUX_HWDEP_NAME ;
 int SNDRV_HWDEP_IFACE_EMUX_WAVETABLE ;
 int snd_card_register (int ) ;
 void* snd_emux_hwdep_ioctl ;
 int snd_hwdep_new (int ,int ,int ,struct snd_hwdep**) ;
 int strcpy (int ,int ) ;

int
snd_emux_init_hwdep(struct snd_emux *emu)
{
 struct snd_hwdep *hw;
 int err;

 if ((err = snd_hwdep_new(emu->card, SNDRV_EMUX_HWDEP_NAME, emu->hwdep_idx, &hw)) < 0)
  return err;
 emu->hwdep = hw;
 strcpy(hw->name, SNDRV_EMUX_HWDEP_NAME);
 hw->iface = SNDRV_HWDEP_IFACE_EMUX_WAVETABLE;
 hw->ops.ioctl = snd_emux_hwdep_ioctl;


 hw->ops.ioctl_compat = snd_emux_hwdep_ioctl;
 hw->exclusive = 1;
 hw->private_data = emu;
 if ((err = snd_card_register(emu->card)) < 0)
  return err;

 return 0;
}
