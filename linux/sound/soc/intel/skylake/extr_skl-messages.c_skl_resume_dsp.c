
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* astate_cfg; } ;
struct skl_dev {TYPE_1__ cfg; int dev; int (* clock_power_gating ) (int ,int) ;int (* enable_miscbdcge ) (int ,int) ;int dsp; scalar_t__ is_first_boot; } ;
struct hdac_bus {int ppcap; } ;
struct TYPE_4__ {int count; } ;


 int skl_dsp_set_astate_cfg (struct skl_dev*,int ,TYPE_2__*) ;
 int skl_dsp_wake (int ) ;
 struct hdac_bus* skl_to_bus (struct skl_dev*) ;
 int snd_hdac_ext_bus_ppcap_enable (struct hdac_bus*,int) ;
 int snd_hdac_ext_bus_ppcap_int_enable (struct hdac_bus*,int) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int) ;

int skl_resume_dsp(struct skl_dev *skl)
{
 struct hdac_bus *bus = skl_to_bus(skl);
 int ret;


 if (!bus->ppcap)
  return 0;


 snd_hdac_ext_bus_ppcap_enable(bus, 1);
 snd_hdac_ext_bus_ppcap_int_enable(bus, 1);


 if (skl->is_first_boot)
  return 0;





 skl->enable_miscbdcge(skl->dev, 0);
 skl->clock_power_gating(skl->dev, 0);

 ret = skl_dsp_wake(skl->dsp);
 skl->enable_miscbdcge(skl->dev, 1);
 skl->clock_power_gating(skl->dev, 1);
 if (ret < 0)
  return ret;

 if (skl->cfg.astate_cfg != ((void*)0)) {
  skl_dsp_set_astate_cfg(skl, skl->cfg.astate_cfg->count,
     skl->cfg.astate_cfg);
 }
 return ret;
}
