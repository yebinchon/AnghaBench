
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ioctl_compat; void* ioctl; } ;
struct snd_hwdep {TYPE_1__ ops; int name; struct hdsp* private_data; } ;
struct snd_card {int dummy; } ;
struct hdsp {struct snd_hwdep* hwdep; } ;


 void* snd_hdsp_hwdep_ioctl ;
 int snd_hwdep_new (struct snd_card*,char*,int ,struct snd_hwdep**) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_hdsp_create_hwdep(struct snd_card *card, struct hdsp *hdsp)
{
 struct snd_hwdep *hw;
 int err;

 if ((err = snd_hwdep_new(card, "HDSP hwdep", 0, &hw)) < 0)
  return err;

 hdsp->hwdep = hw;
 hw->private_data = hdsp;
 strcpy(hw->name, "HDSP hwdep interface");

 hw->ops.ioctl = snd_hdsp_hwdep_ioctl;
 hw->ops.ioctl_compat = snd_hdsp_hwdep_ioctl;

 return 0;
}
