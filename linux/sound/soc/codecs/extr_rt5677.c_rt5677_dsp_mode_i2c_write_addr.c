
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt5677_priv {int dsp_cmd_lock; int regmap_physical; struct snd_soc_component* component; } ;


 int RT5677_DSP_I2C_ADDR_LSB ;
 int RT5677_DSP_I2C_ADDR_MSB ;
 int RT5677_DSP_I2C_DATA_LSB ;
 int RT5677_DSP_I2C_DATA_MSB ;
 int RT5677_DSP_I2C_OP_CODE ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int rt5677_dsp_mode_i2c_write_addr(struct rt5677_priv *rt5677,
  unsigned int addr, unsigned int value, unsigned int opcode)
{
 struct snd_soc_component *component = rt5677->component;
 int ret;

 mutex_lock(&rt5677->dsp_cmd_lock);

 ret = regmap_write(rt5677->regmap_physical, RT5677_DSP_I2C_ADDR_MSB,
  addr >> 16);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set addr msb value: %d\n", ret);
  goto err;
 }

 ret = regmap_write(rt5677->regmap_physical, RT5677_DSP_I2C_ADDR_LSB,
  addr & 0xffff);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set addr lsb value: %d\n", ret);
  goto err;
 }

 ret = regmap_write(rt5677->regmap_physical, RT5677_DSP_I2C_DATA_MSB,
  value >> 16);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set data msb value: %d\n", ret);
  goto err;
 }

 ret = regmap_write(rt5677->regmap_physical, RT5677_DSP_I2C_DATA_LSB,
  value & 0xffff);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set data lsb value: %d\n", ret);
  goto err;
 }

 ret = regmap_write(rt5677->regmap_physical, RT5677_DSP_I2C_OP_CODE,
  opcode);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set op code value: %d\n", ret);
  goto err;
 }

err:
 mutex_unlock(&rt5677->dsp_cmd_lock);

 return ret;
}
