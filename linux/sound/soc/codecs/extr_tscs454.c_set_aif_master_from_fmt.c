
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct aif {int master; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static inline int set_aif_master_from_fmt(struct snd_soc_component *component,
  struct aif *aif, unsigned int fmt)
{
 int ret;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 129:
  aif->master = 1;
  break;
 case 128:
  aif->master = 0;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Unsupported format (%d)\n", ret);
  return ret;
 }

 return 0;
}
