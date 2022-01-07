
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct hdac_bus {int dev; struct drm_audio_component* audio_component; } ;
struct drm_audio_component {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_cdclk_freq ) (int ) ;} ;


 int CONTROLLER_IN_GPU (struct pci_dev*) ;
 int HSW_EM4 ;
 int HSW_EM5 ;
 int snd_hdac_chip_writew (struct hdac_bus*,int ,unsigned int) ;
 int stub1 (int ) ;
 struct pci_dev* to_pci_dev (int ) ;

void snd_hdac_i915_set_bclk(struct hdac_bus *bus)
{
 struct drm_audio_component *acomp = bus->audio_component;
 struct pci_dev *pci = to_pci_dev(bus->dev);
 int cdclk_freq;
 unsigned int bclk_m, bclk_n;

 if (!acomp || !acomp->ops || !acomp->ops->get_cdclk_freq)
  return;
 if (!CONTROLLER_IN_GPU(pci))
  return;

 cdclk_freq = acomp->ops->get_cdclk_freq(acomp->dev);
 switch (cdclk_freq) {
 case 337500:
  bclk_m = 16;
  bclk_n = 225;
  break;

 case 450000:
 default:
  bclk_m = 4;
  bclk_n = 75;
  break;

 case 540000:
  bclk_m = 4;
  bclk_n = 90;
  break;

 case 675000:
  bclk_m = 8;
  bclk_n = 225;
  break;
 }

 snd_hdac_chip_writew(bus, HSW_EM4, bclk_m);
 snd_hdac_chip_writew(bus, HSW_EM5, bclk_n);
}
