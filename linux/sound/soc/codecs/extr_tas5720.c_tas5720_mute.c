
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int TAS5720_DIGITAL_CTRL2_REG ;
 int TAS5720_MUTE ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int tas5720_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 int ret;

 ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL2_REG,
      TAS5720_MUTE, mute ? TAS5720_MUTE : 0);
 if (ret < 0) {
  dev_err(component->dev, "error (un-)muting device: %d\n", ret);
  return ret;
 }

 return 0;
}
