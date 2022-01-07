
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct msm8916_wcd_digital_priv {int dummy; } ;


 struct msm8916_wcd_digital_priv* dev_get_drvdata (int ) ;
 int snd_soc_component_set_drvdata (struct snd_soc_component*,struct msm8916_wcd_digital_priv*) ;

__attribute__((used)) static int msm8916_wcd_digital_component_probe(struct snd_soc_component *component)
{
 struct msm8916_wcd_digital_priv *priv = dev_get_drvdata(component->dev);

 snd_soc_component_set_drvdata(component, priv);

 return 0;
}
