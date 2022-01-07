
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {scalar_t__ reg; int shift; int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;


 scalar_t__ WCD9335_ANA_LO_1_2 ;
 scalar_t__ WCD9335_ANA_LO_3_4 ;
 int WCD9335_CDC_RX3_RX_PATH_CTL ;
 int WCD9335_CDC_RX3_RX_PATH_MIX_CTL ;
 int WCD9335_CDC_RX4_RX_PATH_CTL ;
 int WCD9335_CDC_RX4_RX_PATH_MIX_CTL ;
 int WCD9335_CDC_RX5_RX_PATH_CTL ;
 int WCD9335_CDC_RX5_RX_PATH_MIX_CTL ;
 int WCD9335_CDC_RX6_RX_PATH_CTL ;
 int WCD9335_CDC_RX6_RX_PATH_MIX_CTL ;
 int WCD9335_CDC_RX_PGA_MUTE_DISABLE ;
 int WCD9335_CDC_RX_PGA_MUTE_EN_MASK ;
 int dev_err (int ,char*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int wcd9335_codec_enable_lineout_pa(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kc,
      int event)
{
 struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);
 int vol_reg = 0, mix_vol_reg = 0;

 if (w->reg == WCD9335_ANA_LO_1_2) {
  if (w->shift == 7) {
   vol_reg = WCD9335_CDC_RX3_RX_PATH_CTL;
   mix_vol_reg = WCD9335_CDC_RX3_RX_PATH_MIX_CTL;
  } else if (w->shift == 6) {
   vol_reg = WCD9335_CDC_RX4_RX_PATH_CTL;
   mix_vol_reg = WCD9335_CDC_RX4_RX_PATH_MIX_CTL;
  }
 } else if (w->reg == WCD9335_ANA_LO_3_4) {
  if (w->shift == 7) {
   vol_reg = WCD9335_CDC_RX5_RX_PATH_CTL;
   mix_vol_reg = WCD9335_CDC_RX5_RX_PATH_MIX_CTL;
  } else if (w->shift == 6) {
   vol_reg = WCD9335_CDC_RX6_RX_PATH_CTL;
   mix_vol_reg = WCD9335_CDC_RX6_RX_PATH_MIX_CTL;
  }
 } else {
  dev_err(comp->dev, "Error enabling lineout PA\n");
  return -EINVAL;
 }

 switch (event) {
 case 128:



  usleep_range(5000, 5500);
  snd_soc_component_update_bits(comp, vol_reg,
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
     WCD9335_CDC_RX_PGA_MUTE_DISABLE);


  if ((snd_soc_component_read32(comp, mix_vol_reg)) &
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK)
   snd_soc_component_update_bits(comp, mix_vol_reg,
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
     WCD9335_CDC_RX_PGA_MUTE_DISABLE);
  break;
 case 129:



  usleep_range(5000, 5500);
  break;
 };

 return 0;
}
