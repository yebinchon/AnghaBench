
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct skl_dev {int dummy; } ;
struct hdac_bus {int dummy; } ;


 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 struct hdac_bus* dev_get_drvdata (int ) ;
 int skl_debugfs_exit (struct skl_dev*) ;
 int skl_tplg_exit (struct snd_soc_component*,struct hdac_bus*) ;

__attribute__((used)) static void skl_pcm_remove(struct snd_soc_component *component)
{
 struct hdac_bus *bus = dev_get_drvdata(component->dev);
 struct skl_dev *skl = bus_to_skl(bus);

 skl_tplg_exit(component, bus);

 skl_debugfs_exit(skl);
}
