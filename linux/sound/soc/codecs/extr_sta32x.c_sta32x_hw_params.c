
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sta32x_priv {unsigned int mclk; int regmap; int format; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_3__ {unsigned int fs; int ir; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int EIO ;



 int STA32X_CONFA ;
 int STA32X_CONFA_IR_MASK ;
 int STA32X_CONFA_IR_SHIFT ;
 int STA32X_CONFA_MCS_MASK ;
 int STA32X_CONFA_MCS_SHIFT ;
 int STA32X_CONFB ;
 int STA32X_CONFB_SAIFB ;
 int STA32X_CONFB_SAI_MASK ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,...) ;
 TYPE_1__* interpolation_ratios ;
 unsigned int** mcs_ratio_table ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct sta32x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int sta32x_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct sta32x_priv *sta32x = snd_soc_component_get_drvdata(component);
 int i, mcs = -EINVAL, ir = -EINVAL;
 unsigned int confa, confb;
 unsigned int rate, ratio;
 int ret;

 if (!sta32x->mclk) {
  dev_err(component->dev,
   "sta32x->mclk is unset. Unable to determine ratio\n");
  return -EIO;
 }

 rate = params_rate(params);
 ratio = sta32x->mclk / rate;
 dev_dbg(component->dev, "rate: %u, ratio: %u\n", rate, ratio);

 for (i = 0; i < ARRAY_SIZE(interpolation_ratios); i++) {
  if (interpolation_ratios[i].fs == rate) {
   ir = interpolation_ratios[i].ir;
   break;
  }
 }

 if (ir < 0) {
  dev_err(component->dev, "Unsupported samplerate: %u\n", rate);
  return -EINVAL;
 }

 for (i = 0; i < 6; i++) {
  if (mcs_ratio_table[ir][i] == ratio) {
   mcs = i;
   break;
  }
 }

 if (mcs < 0) {
  dev_err(component->dev, "Unresolvable ratio: %u\n", ratio);
  return -EINVAL;
 }

 confa = (ir << STA32X_CONFA_IR_SHIFT) |
  (mcs << STA32X_CONFA_MCS_SHIFT);
 confb = 0;

 switch (params_width(params)) {
 case 24:
  dev_dbg(component->dev, "24bit\n");

 case 32:
  dev_dbg(component->dev, "24bit or 32bit\n");
  switch (sta32x->format) {
  case 130:
   confb |= 0x0;
   break;
  case 129:
   confb |= 0x1;
   break;
  case 128:
   confb |= 0x2;
   break;
  }

  break;
 case 20:
  dev_dbg(component->dev, "20bit\n");
  switch (sta32x->format) {
  case 130:
   confb |= 0x4;
   break;
  case 129:
   confb |= 0x5;
   break;
  case 128:
   confb |= 0x6;
   break;
  }

  break;
 case 18:
  dev_dbg(component->dev, "18bit\n");
  switch (sta32x->format) {
  case 130:
   confb |= 0x8;
   break;
  case 129:
   confb |= 0x9;
   break;
  case 128:
   confb |= 0xa;
   break;
  }

  break;
 case 16:
  dev_dbg(component->dev, "16bit\n");
  switch (sta32x->format) {
  case 130:
   confb |= 0x0;
   break;
  case 129:
   confb |= 0xd;
   break;
  case 128:
   confb |= 0xe;
   break;
  }

  break;
 default:
  return -EINVAL;
 }

 ret = regmap_update_bits(sta32x->regmap, STA32X_CONFA,
     STA32X_CONFA_MCS_MASK | STA32X_CONFA_IR_MASK,
     confa);
 if (ret < 0)
  return ret;

 ret = regmap_update_bits(sta32x->regmap, STA32X_CONFB,
     STA32X_CONFB_SAI_MASK | STA32X_CONFB_SAIFB,
     confb);
 if (ret < 0)
  return ret;

 return 0;
}
