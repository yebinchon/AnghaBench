
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ LPASS_CDC_CLK_TX_RESET_B1_CTL ;
 scalar_t__ LPASS_CDC_TX1_MUX_CTL ;
 scalar_t__ LPASS_CDC_TX1_VOL_CTL_CFG ;




 int TX_MUX_CTL_CF_NEG_3DB_150HZ ;
 int TX_MUX_CTL_CUT_OFF_FREQ_MASK ;
 int TX_MUX_CTL_CUT_OFF_FREQ_SHIFT ;
 int TX_MUX_CTL_HPF_BP_SEL_BYPASS ;
 int TX_MUX_CTL_HPF_BP_SEL_MASK ;
 int TX_MUX_CTL_HPF_BP_SEL_NO_BYPASS ;
 int TX_VOL_CTL_CFG_MUTE_EN_ENABLE ;
 int TX_VOL_CTL_CFG_MUTE_EN_MASK ;
 int snd_soc_component_read32 (struct snd_soc_component*,scalar_t__) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,scalar_t__,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 scalar_t__* tx_gain_reg ;

__attribute__((used)) static int msm8916_wcd_digital_enable_dec(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol,
       int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 unsigned int decimator = w->shift + 1;
 u16 dec_reset_reg, tx_vol_ctl_reg, tx_mux_ctl_reg;
 u8 dec_hpf_cut_of_freq;

 dec_reset_reg = LPASS_CDC_CLK_TX_RESET_B1_CTL;
 tx_vol_ctl_reg = LPASS_CDC_TX1_VOL_CTL_CFG + 32 * (decimator - 1);
 tx_mux_ctl_reg = LPASS_CDC_TX1_MUX_CTL + 32 * (decimator - 1);

 switch (event) {
 case 128:

  snd_soc_component_update_bits(component, tx_vol_ctl_reg,
        TX_VOL_CTL_CFG_MUTE_EN_MASK,
        TX_VOL_CTL_CFG_MUTE_EN_ENABLE);
  dec_hpf_cut_of_freq = snd_soc_component_read32(component, tx_mux_ctl_reg) &
     TX_MUX_CTL_CUT_OFF_FREQ_MASK;
  dec_hpf_cut_of_freq >>= TX_MUX_CTL_CUT_OFF_FREQ_SHIFT;
  if (dec_hpf_cut_of_freq != TX_MUX_CTL_CF_NEG_3DB_150HZ) {

   snd_soc_component_update_bits(component, tx_mux_ctl_reg,
         TX_MUX_CTL_CUT_OFF_FREQ_MASK,
         TX_MUX_CTL_CF_NEG_3DB_150HZ);
  }
  break;
 case 130:

  snd_soc_component_update_bits(component, tx_mux_ctl_reg,
        TX_MUX_CTL_HPF_BP_SEL_MASK,
        TX_MUX_CTL_HPF_BP_SEL_NO_BYPASS);

  snd_soc_component_write(component, tx_gain_reg[w->shift],
         snd_soc_component_read32(component, tx_gain_reg[w->shift]));
  snd_soc_component_update_bits(component, tx_vol_ctl_reg,
        TX_VOL_CTL_CFG_MUTE_EN_MASK, 0);
  break;
 case 129:
  snd_soc_component_update_bits(component, tx_vol_ctl_reg,
        TX_VOL_CTL_CFG_MUTE_EN_MASK,
        TX_VOL_CTL_CFG_MUTE_EN_ENABLE);
  snd_soc_component_update_bits(component, tx_mux_ctl_reg,
        TX_MUX_CTL_HPF_BP_SEL_MASK,
        TX_MUX_CTL_HPF_BP_SEL_BYPASS);
  break;
 case 131:
  snd_soc_component_update_bits(component, dec_reset_reg, 1 << w->shift,
        1 << w->shift);
  snd_soc_component_update_bits(component, dec_reset_reg, 1 << w->shift, 0x0);
  snd_soc_component_update_bits(component, tx_mux_ctl_reg,
        TX_MUX_CTL_HPF_BP_SEL_MASK,
        TX_MUX_CTL_HPF_BP_SEL_BYPASS);
  snd_soc_component_update_bits(component, tx_vol_ctl_reg,
        TX_VOL_CTL_CFG_MUTE_EN_MASK, 0);
  break;
 }

 return 0;
}
