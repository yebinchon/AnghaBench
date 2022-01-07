
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs4270_private {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int CS4270_MUTE ;
 int CS4270_MUTE_AUTO ;
 int CS4270_TRANS ;
 int CS4270_TRANS_SOFT ;
 int CS4270_TRANS_ZERO ;
 int dev_err (int ,char*) ;
 int regulator_bulk_enable (int ,int ) ;
 struct cs4270_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;

__attribute__((used)) static int cs4270_probe(struct snd_soc_component *component)
{
 struct cs4270_private *cs4270 = snd_soc_component_get_drvdata(component);
 int ret;






 ret = snd_soc_component_update_bits(component, CS4270_MUTE, CS4270_MUTE_AUTO, 0);
 if (ret < 0) {
  dev_err(component->dev, "i2c write failed\n");
  return ret;
 }






 ret = snd_soc_component_update_bits(component, CS4270_TRANS,
  CS4270_TRANS_SOFT | CS4270_TRANS_ZERO, 0);
 if (ret < 0) {
  dev_err(component->dev, "i2c write failed\n");
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(cs4270->supplies),
        cs4270->supplies);

 return ret;
}
