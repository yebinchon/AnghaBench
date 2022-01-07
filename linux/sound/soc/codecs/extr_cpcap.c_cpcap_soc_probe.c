
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct cpcap_audio {int vendor; int regmap; struct snd_soc_component* component; } ;
struct TYPE_3__ {int parent; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpcap_audio_reset (struct snd_soc_component*,int) ;
 int cpcap_get_vendor (TYPE_1__*,int ,int *) ;
 int dev_get_regmap (int ,int *) ;
 struct cpcap_audio* devm_kzalloc (TYPE_1__*,int,int ) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;
 int snd_soc_component_set_drvdata (struct snd_soc_component*,struct cpcap_audio*) ;

__attribute__((used)) static int cpcap_soc_probe(struct snd_soc_component *component)
{
 struct cpcap_audio *cpcap;
 int err;

 cpcap = devm_kzalloc(component->dev, sizeof(*cpcap), GFP_KERNEL);
 if (!cpcap)
  return -ENOMEM;
 snd_soc_component_set_drvdata(component, cpcap);
 cpcap->component = component;

 cpcap->regmap = dev_get_regmap(component->dev->parent, ((void*)0));
 if (!cpcap->regmap)
  return -ENODEV;
 snd_soc_component_init_regmap(component, cpcap->regmap);

 err = cpcap_get_vendor(component->dev, cpcap->regmap, &cpcap->vendor);
 if (err)
  return err;

 return cpcap_audio_reset(component, 0);
}
