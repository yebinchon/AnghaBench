
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct skl_dsp_ops {int (* init_fw ) (int ,struct skl_dev*) ;} ;
struct TYPE_5__ {TYPE_3__* astate_cfg; } ;
struct skl_dev {TYPE_2__ cfg; int update_d0i3c; int (* clock_power_gating ) (int ,int) ;int (* enable_miscbdcge ) (int ,int) ;TYPE_1__* pci; int debugfs; struct snd_soc_component* component; } ;
struct hdac_bus {scalar_t__ ppcap; } ;
struct TYPE_6__ {int count; } ;
struct TYPE_4__ {int device; } ;


 int EIO ;
 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 int dev_err (int ,char*,...) ;
 struct hdac_bus* dev_get_drvdata (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int skl_debugfs_init (struct skl_dev*) ;
 int skl_dsp_set_astate_cfg (struct skl_dev*,int ,TYPE_3__*) ;
 struct skl_dsp_ops* skl_get_dsp_ops (int ) ;
 int skl_populate_modules (struct skl_dev*) ;
 int skl_tplg_init (struct snd_soc_component*,struct hdac_bus*) ;
 int skl_update_d0i3c ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,struct skl_dev*) ;
 int stub4 (int ,int) ;
 int stub5 (int ,int) ;

__attribute__((used)) static int skl_platform_soc_probe(struct snd_soc_component *component)
{
 struct hdac_bus *bus = dev_get_drvdata(component->dev);
 struct skl_dev *skl = bus_to_skl(bus);
 const struct skl_dsp_ops *ops;
 int ret;

 pm_runtime_get_sync(component->dev);
 if (bus->ppcap) {
  skl->component = component;


  skl->debugfs = skl_debugfs_init(skl);

  ret = skl_tplg_init(component, bus);
  if (ret < 0) {
   dev_err(component->dev, "Failed to init topology!\n");
   return ret;
  }


  ops = skl_get_dsp_ops(skl->pci->device);
  if (!ops)
   return -EIO;





  skl->enable_miscbdcge(component->dev, 0);
  skl->clock_power_gating(component->dev, 0);

  ret = ops->init_fw(component->dev, skl);
  skl->enable_miscbdcge(component->dev, 1);
  skl->clock_power_gating(component->dev, 1);
  if (ret < 0) {
   dev_err(component->dev, "Failed to boot first fw: %d\n", ret);
   return ret;
  }
  skl_populate_modules(skl);
  skl->update_d0i3c = skl_update_d0i3c;

  if (skl->cfg.astate_cfg != ((void*)0)) {
   skl_dsp_set_astate_cfg(skl,
     skl->cfg.astate_cfg->count,
     skl->cfg.astate_cfg);
  }
 }
 pm_runtime_mark_last_busy(component->dev);
 pm_runtime_put_autosuspend(component->dev);

 return 0;
}
