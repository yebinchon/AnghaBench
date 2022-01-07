
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct snd_soc_tplg_manifest {TYPE_1__ priv; } ;
struct snd_soc_component {int dummy; } ;
struct skl_dev {scalar_t__ lib_count; } ;
struct hdac_bus {int dev; } ;


 int EINVAL ;
 scalar_t__ SKL_MAX_LIB ;
 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 int dev_err (int ,char*,scalar_t__) ;
 int skl_tplg_get_manifest_data (struct snd_soc_tplg_manifest*,int ,struct skl_dev*) ;
 struct hdac_bus* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int skl_manifest_load(struct snd_soc_component *cmpnt, int index,
    struct snd_soc_tplg_manifest *manifest)
{
 struct hdac_bus *bus = snd_soc_component_get_drvdata(cmpnt);
 struct skl_dev *skl = bus_to_skl(bus);


 if (manifest->priv.size == 0)
  return 0;

 skl_tplg_get_manifest_data(manifest, bus->dev, skl);

 if (skl->lib_count > SKL_MAX_LIB) {
  dev_err(bus->dev, "Exceeding max Library count. Got:%d\n",
     skl->lib_count);
  return -EINVAL;
 }

 return 0;
}
