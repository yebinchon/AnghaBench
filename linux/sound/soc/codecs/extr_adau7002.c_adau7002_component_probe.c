
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct adau7002_priv {int wakeup_delay; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int device_property_read_u32 (int ,char*,int *) ;
 struct adau7002_priv* devm_kzalloc (int ,int,int ) ;
 int snd_soc_component_set_drvdata (struct snd_soc_component*,struct adau7002_priv*) ;

__attribute__((used)) static int adau7002_component_probe(struct snd_soc_component *component)
{
 struct adau7002_priv *adau7002;

 adau7002 = devm_kzalloc(component->dev, sizeof(*adau7002),
    GFP_KERNEL);
 if (!adau7002)
  return -ENOMEM;

 device_property_read_u32(component->dev, "wakeup-delay-ms",
     &adau7002->wakeup_delay);

 snd_soc_component_set_drvdata(component, adau7002);

 return 0;
}
