
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_dai {TYPE_1__* component; int dev; } ;
struct si476x_core {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int SI476X_DAUDIO_MODE_DSP_A ;
 int SI476X_DAUDIO_MODE_DSP_B ;
 int SI476X_DAUDIO_MODE_I2S ;
 int SI476X_DAUDIO_MODE_IB ;
 int SI476X_DAUDIO_MODE_IF ;
 int SI476X_DAUDIO_MODE_LEFT_J ;
 int SI476X_DAUDIO_MODE_RIGHT_J ;
 int SI476X_DIGITAL_IO_OUTPUT_FORMAT ;
 int SI476X_DIGITAL_IO_OUTPUT_FORMAT_MASK ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int dev_err (int ,char*) ;
 struct si476x_core* i2c_mfd_cell_to_core (int ) ;
 int si476x_core_lock (struct si476x_core*) ;
 int si476x_core_unlock (struct si476x_core*) ;
 int snd_soc_component_update_bits (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static int si476x_codec_set_dai_fmt(struct snd_soc_dai *codec_dai,
        unsigned int fmt)
{
 struct si476x_core *core = i2c_mfd_cell_to_core(codec_dai->dev);
 int err;
 u16 format = 0;

 if ((fmt & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBS_CFS)
  return -EINVAL;

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 136:
  format |= SI476X_DAUDIO_MODE_DSP_A;
  break;
 case 135:
  format |= SI476X_DAUDIO_MODE_DSP_B;
  break;
 case 134:
  format |= SI476X_DAUDIO_MODE_I2S;
  break;
 case 128:
  format |= SI476X_DAUDIO_MODE_RIGHT_J;
  break;
 case 131:
  format |= SI476X_DAUDIO_MODE_LEFT_J;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 136:
 case 135:
  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 132:
   format |= SI476X_DAUDIO_MODE_IB;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 134:
 case 128:
 case 131:
  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 133:
   format |= SI476X_DAUDIO_MODE_IB |
    SI476X_DAUDIO_MODE_IF;
   break;
  case 132:
   format |= SI476X_DAUDIO_MODE_IB;
   break;
  case 130:
   format |= SI476X_DAUDIO_MODE_IF;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 si476x_core_lock(core);

 err = snd_soc_component_update_bits(codec_dai->component, SI476X_DIGITAL_IO_OUTPUT_FORMAT,
      SI476X_DIGITAL_IO_OUTPUT_FORMAT_MASK,
      format);

 si476x_core_unlock(core);

 if (err < 0) {
  dev_err(codec_dai->component->dev, "Failed to set output format\n");
  return err;
 }

 return 0;
}
