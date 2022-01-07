
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int name; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cs42l73_private {int mclksel; } ;




 int EINVAL ;
 scalar_t__ cs42l73_set_mclk (struct snd_soc_dai*,unsigned int) ;
 int dev_err (int ,char*,int ) ;
 struct cs42l73_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs42l73_set_sysclk(struct snd_soc_dai *dai,
         int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct cs42l73_private *priv = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 129:
  break;
 case 128:
  break;
 default:
  return -EINVAL;
 }

 if ((cs42l73_set_mclk(dai, freq)) < 0) {
  dev_err(component->dev, "Unable to set MCLK for dai %s\n",
   dai->name);
  return -EINVAL;
 }

 priv->mclksel = clk_id;

 return 0;
}
