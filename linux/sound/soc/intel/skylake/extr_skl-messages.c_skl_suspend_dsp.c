
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dev {int dsp; } ;
struct hdac_bus {int ppcap; } ;


 int skl_dsp_sleep (int ) ;
 struct hdac_bus* skl_to_bus (struct skl_dev*) ;
 int snd_hdac_ext_bus_ppcap_enable (struct hdac_bus*,int) ;
 int snd_hdac_ext_bus_ppcap_int_enable (struct hdac_bus*,int) ;

int skl_suspend_dsp(struct skl_dev *skl)
{
 struct hdac_bus *bus = skl_to_bus(skl);
 int ret;


 if (!bus->ppcap)
  return 0;

 ret = skl_dsp_sleep(skl->dsp);
 if (ret < 0)
  return ret;


 snd_hdac_ext_bus_ppcap_int_enable(bus, 0);
 snd_hdac_ext_bus_ppcap_enable(bus, 0);

 return 0;
}
