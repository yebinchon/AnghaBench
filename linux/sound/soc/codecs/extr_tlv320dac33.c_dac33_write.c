
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct tlv320dac33_priv {int i2c; scalar_t__ chip_power; } ;
struct snd_soc_component {int dev; } ;


 int dac33_write_reg_cache (struct snd_soc_component*,unsigned int,unsigned int) ;
 int dev_err (int ,char*,int) ;
 int i2c_master_send (int ,unsigned int*,int) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int dac33_write(struct snd_soc_component *component, unsigned int reg,
         unsigned int value)
{
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 u8 data[2];
 int ret = 0;






 data[0] = reg & 0xff;
 data[1] = value & 0xff;

 dac33_write_reg_cache(component, data[0], data[1]);
 if (dac33->chip_power) {
  ret = i2c_master_send(dac33->i2c, data, 2);
  if (ret != 2)
   dev_err(component->dev, "Write failed (%d)\n", ret);
  else
   ret = 0;
 }

 return ret;
}
