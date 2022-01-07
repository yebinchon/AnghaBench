
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct ak4118_priv {int regmap; int reset; struct snd_soc_component* component; } ;


 int AK4118_REG_INT1_MASK ;
 int AK4118_REG_RX_DETECT ;
 int ARRAY_SIZE (int ) ;
 int ak4118_iec958_controls ;
 int dev_err (int ,char*,int,...) ;
 int gpiod_set_value (int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct ak4118_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4118_probe(struct snd_soc_component *component)
{
 struct ak4118_priv *ak4118 = snd_soc_component_get_drvdata(component);
 int ret = 0;

 ak4118->component = component;


 gpiod_set_value(ak4118->reset, 0);


 ret = regmap_write(ak4118->regmap, AK4118_REG_INT1_MASK, 0x00);
 if (ret < 0) {
  dev_err(component->dev,
   "failed to write regmap 0x%x 0x%x: %d\n",
   AK4118_REG_INT1_MASK, 0x00, ret);
  return ret;
 }


 ret = regmap_write(ak4118->regmap, AK4118_REG_RX_DETECT, 0xff);
 if (ret < 0) {
  dev_err(component->dev,
   "failed to write regmap 0x%x 0x%x: %d\n",
   AK4118_REG_RX_DETECT, 0xff, ret);
  return ret;
 }

 ret = snd_soc_add_component_controls(component, ak4118_iec958_controls,
      ARRAY_SIZE(ak4118_iec958_controls));
 if (ret) {
  dev_err(component->dev,
   "failed to add component kcontrols: %d\n", ret);
  return ret;
 }

 return 0;
}
