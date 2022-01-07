
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int devnum; TYPE_2__* bus; } ;
struct TYPE_3__ {int poll; int mmap; int dsp_load; int dsp_status; } ;
struct snd_hwdep {int exclusive; int name; TYPE_1__ ops; int private_data; int iface; } ;
struct snd_card {int dummy; } ;
struct TYPE_4__ {int busnum; } ;


 int SNDRV_HWDEP_IFACE_USX2Y ;
 int SND_USX2Y_LOADER_ID ;
 int snd_hwdep_new (struct snd_card*,int ,int ,struct snd_hwdep**) ;
 int snd_us428ctls_mmap ;
 int snd_us428ctls_poll ;
 int snd_usX2Y_hwdep_dsp_load ;
 int snd_usX2Y_hwdep_dsp_status ;
 int sprintf (int ,char*,int,int) ;
 int usX2Y (struct snd_card*) ;

int usX2Y_hwdep_new(struct snd_card *card, struct usb_device* device)
{
 int err;
 struct snd_hwdep *hw;

 if ((err = snd_hwdep_new(card, SND_USX2Y_LOADER_ID, 0, &hw)) < 0)
  return err;

 hw->iface = SNDRV_HWDEP_IFACE_USX2Y;
 hw->private_data = usX2Y(card);
 hw->ops.dsp_status = snd_usX2Y_hwdep_dsp_status;
 hw->ops.dsp_load = snd_usX2Y_hwdep_dsp_load;
 hw->ops.mmap = snd_us428ctls_mmap;
 hw->ops.poll = snd_us428ctls_poll;
 hw->exclusive = 1;
 sprintf(hw->name, "/dev/bus/usb/%03d/%03d", device->bus->busnum, device->devnum);
 return 0;
}
