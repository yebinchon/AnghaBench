
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct aic26 {struct snd_soc_component* component; } ;


 int AIC26_REG_AUDIO_CTRL3 ;
 int AIC26_REG_POWER_CTRL ;
 int AIC26_REG_RESET ;
 int dev_attr_keyclick ;
 struct aic26* dev_get_drvdata (int ) ;
 int dev_info (int ,char*) ;
 int device_create_file (int ,int *) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int aic26_probe(struct snd_soc_component *component)
{
 struct aic26 *aic26 = dev_get_drvdata(component->dev);
 int ret, reg;

 aic26->component = component;


 snd_soc_component_write(component, AIC26_REG_RESET, 0xBB00);


 snd_soc_component_write(component, AIC26_REG_POWER_CTRL, 0);


 reg = snd_soc_component_read32(component, AIC26_REG_AUDIO_CTRL3);
 reg &= ~0xf800;
 reg |= 0x0800;
 snd_soc_component_write(component, AIC26_REG_AUDIO_CTRL3, reg);



 ret = device_create_file(component->dev, &dev_attr_keyclick);
 if (ret)
  dev_info(component->dev, "error creating sysfs files\n");

 return 0;
}
