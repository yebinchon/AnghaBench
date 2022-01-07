
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int FB_I2SCMC_BCMP1 ;
 int FB_I2SCMC_BCMP2 ;
 int FB_I2SCMC_BCMP3 ;
 unsigned int FM_I2SCMC_BCMP1 ;
 unsigned int FM_I2SCMC_BCMP2 ;
 unsigned int FM_I2SCMC_BCMP3 ;
 unsigned int I2SCMC_BCMP_32X ;
 unsigned int I2SCMC_BCMP_40X ;
 unsigned int I2SCMC_BCMP_64X ;
 int R_I2SCMC ;



 int dev_dbg (int ,char*,int ,unsigned int) ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int tscs454_set_bclk_ratio(struct snd_soc_dai *dai,
  unsigned int ratio)
{
 unsigned int mask;
 int ret;
 struct snd_soc_component *component = dai->component;
 unsigned int val;
 int shift;

 dev_dbg(component->dev, "set_bclk_ratio() id = %d ratio = %u\n",
   dai->id, ratio);

 switch (dai->id) {
 case 130:
  mask = FM_I2SCMC_BCMP1;
  shift = FB_I2SCMC_BCMP1;
  break;
 case 129:
  mask = FM_I2SCMC_BCMP2;
  shift = FB_I2SCMC_BCMP2;
  break;
 case 128:
  mask = FM_I2SCMC_BCMP3;
  shift = FB_I2SCMC_BCMP3;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Unknown audio interface (%d)\n", ret);
  return ret;
 }

 switch (ratio) {
 case 32:
  val = I2SCMC_BCMP_32X;
  break;
 case 40:
  val = I2SCMC_BCMP_40X;
  break;
 case 64:
  val = I2SCMC_BCMP_64X;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Unsupported bclk ratio (%d)\n", ret);
  return ret;
 }

 ret = snd_soc_component_update_bits(component,
   R_I2SCMC, mask, val << shift);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to set DAI BCLK ratio (%d)\n", ret);
  return ret;
 }

 return 0;
}
