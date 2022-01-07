
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlv320dac33_priv {int i2c; scalar_t__ chip_power; } ;
struct snd_soc_component {int dev; } ;


 int DAC33_I2C_ADDR_AUTOINC ;
 int dac33_write_reg_cache (struct snd_soc_component*,int,int) ;
 int dev_err (int ,char*,int) ;
 int i2c_master_send (int ,int*,int) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int dac33_write16(struct snd_soc_component *component, unsigned int reg,
         unsigned int value)
{
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 u8 data[3];
 int ret = 0;







 data[0] = reg & 0xff;
 data[1] = (value >> 8) & 0xff;
 data[2] = value & 0xff;

 dac33_write_reg_cache(component, data[0], data[1]);
 dac33_write_reg_cache(component, data[0] + 1, data[2]);

 if (dac33->chip_power) {

  data[0] |= DAC33_I2C_ADDR_AUTOINC;
  ret = i2c_master_send(dac33->i2c, data, 3);
  if (ret != 3)
   dev_err(component->dev, "Write failed (%d)\n", ret);
  else
   ret = 0;
 }

 return ret;
}
