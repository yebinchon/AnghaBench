
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int usage_count; int state; } ;
struct skl_dev {TYPE_4__* dsp; TYPE_2__ cores; TYPE_1__* dsp_ops; } ;
struct hdac_bus {int dev; } ;
struct TYPE_7__ {scalar_t__ lpe; } ;
struct TYPE_8__ {TYPE_3__ addr; } ;
struct TYPE_5__ {int (* cleanup ) (int ,struct skl_dev*) ;} ;


 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 struct hdac_bus* skl_to_bus (struct skl_dev*) ;
 int snd_hdac_ext_bus_ppcap_int_enable (struct hdac_bus*,int) ;
 int stub1 (int ,struct skl_dev*) ;

int skl_free_dsp(struct skl_dev *skl)
{
 struct hdac_bus *bus = skl_to_bus(skl);


 snd_hdac_ext_bus_ppcap_int_enable(bus, 0);

 skl->dsp_ops->cleanup(bus->dev, skl);

 kfree(skl->cores.state);
 kfree(skl->cores.usage_count);

 if (skl->dsp->addr.lpe)
  iounmap(skl->dsp->addr.lpe);

 return 0;
}
