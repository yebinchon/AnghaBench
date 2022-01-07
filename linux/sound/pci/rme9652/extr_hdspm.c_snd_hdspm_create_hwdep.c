
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* release; void* ioctl_compat; void* ioctl; void* open; } ;
struct snd_hwdep {TYPE_1__ ops; int name; struct hdspm* private_data; } ;
struct snd_card {int dummy; } ;
struct hdspm {struct snd_hwdep* hwdep; } ;


 void* snd_hdspm_hwdep_dummy_op ;
 void* snd_hdspm_hwdep_ioctl ;
 int snd_hwdep_new (struct snd_card*,char*,int ,struct snd_hwdep**) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_hdspm_create_hwdep(struct snd_card *card,
      struct hdspm *hdspm)
{
 struct snd_hwdep *hw;
 int err;

 err = snd_hwdep_new(card, "HDSPM hwdep", 0, &hw);
 if (err < 0)
  return err;

 hdspm->hwdep = hw;
 hw->private_data = hdspm;
 strcpy(hw->name, "HDSPM hwdep interface");

 hw->ops.open = snd_hdspm_hwdep_dummy_op;
 hw->ops.ioctl = snd_hdspm_hwdep_ioctl;
 hw->ops.ioctl_compat = snd_hdspm_hwdep_ioctl;
 hw->ops.release = snd_hdspm_hwdep_dummy_op;

 return 0;
}
