#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct snd_soc_dapm_widget {int shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 scalar_t__ LPASS_CDC_CLK_TX_RESET_B1_CTL ; 
 scalar_t__ LPASS_CDC_TX1_MUX_CTL ; 
 scalar_t__ LPASS_CDC_TX1_VOL_CTL_CFG ; 
#define  SND_SOC_DAPM_POST_PMD 131 
#define  SND_SOC_DAPM_POST_PMU 130 
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int TX_MUX_CTL_CF_NEG_3DB_150HZ ; 
 int TX_MUX_CTL_CUT_OFF_FREQ_MASK ; 
 int TX_MUX_CTL_CUT_OFF_FREQ_SHIFT ; 
 int TX_MUX_CTL_HPF_BP_SEL_BYPASS ; 
 int TX_MUX_CTL_HPF_BP_SEL_MASK ; 
 int TX_MUX_CTL_HPF_BP_SEL_NO_BYPASS ; 
 int TX_VOL_CTL_CFG_MUTE_EN_ENABLE ; 
 int TX_VOL_CTL_CFG_MUTE_EN_MASK ; 
 int FUNC0 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,scalar_t__,int) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__* tx_gain_reg ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
					  struct snd_kcontrol *kcontrol,
					  int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	unsigned int decimator = w->shift + 1;
	u16 dec_reset_reg, tx_vol_ctl_reg, tx_mux_ctl_reg;
	u8 dec_hpf_cut_of_freq;

	dec_reset_reg = LPASS_CDC_CLK_TX_RESET_B1_CTL;
	tx_vol_ctl_reg = LPASS_CDC_TX1_VOL_CTL_CFG + 32 * (decimator - 1);
	tx_mux_ctl_reg = LPASS_CDC_TX1_MUX_CTL + 32 * (decimator - 1);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		/* Enable TX digital mute */
		FUNC1(component, tx_vol_ctl_reg,
				    TX_VOL_CTL_CFG_MUTE_EN_MASK,
				    TX_VOL_CTL_CFG_MUTE_EN_ENABLE);
		dec_hpf_cut_of_freq = FUNC0(component, tx_mux_ctl_reg) &
					TX_MUX_CTL_CUT_OFF_FREQ_MASK;
		dec_hpf_cut_of_freq >>= TX_MUX_CTL_CUT_OFF_FREQ_SHIFT;
		if (dec_hpf_cut_of_freq != TX_MUX_CTL_CF_NEG_3DB_150HZ) {
			/* set cut of freq to CF_MIN_3DB_150HZ (0x1) */
			FUNC1(component, tx_mux_ctl_reg,
					    TX_MUX_CTL_CUT_OFF_FREQ_MASK,
					    TX_MUX_CTL_CF_NEG_3DB_150HZ);
		}
		break;
	case SND_SOC_DAPM_POST_PMU:
		/* enable HPF */
		FUNC1(component, tx_mux_ctl_reg,
				    TX_MUX_CTL_HPF_BP_SEL_MASK,
				    TX_MUX_CTL_HPF_BP_SEL_NO_BYPASS);
		/* apply the digital gain after the decimator is enabled */
		FUNC2(component, tx_gain_reg[w->shift],
			      FUNC0(component, tx_gain_reg[w->shift]));
		FUNC1(component, tx_vol_ctl_reg,
				    TX_VOL_CTL_CFG_MUTE_EN_MASK, 0);
		break;
	case SND_SOC_DAPM_PRE_PMD:
		FUNC1(component, tx_vol_ctl_reg,
				    TX_VOL_CTL_CFG_MUTE_EN_MASK,
				    TX_VOL_CTL_CFG_MUTE_EN_ENABLE);
		FUNC1(component, tx_mux_ctl_reg,
				    TX_MUX_CTL_HPF_BP_SEL_MASK,
				    TX_MUX_CTL_HPF_BP_SEL_BYPASS);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC1(component, dec_reset_reg, 1 << w->shift,
				    1 << w->shift);
		FUNC1(component, dec_reset_reg, 1 << w->shift, 0x0);
		FUNC1(component, tx_mux_ctl_reg,
				    TX_MUX_CTL_HPF_BP_SEL_MASK,
				    TX_MUX_CTL_HPF_BP_SEL_BYPASS);
		FUNC1(component, tx_vol_ctl_reg,
				    TX_VOL_CTL_CFG_MUTE_EN_MASK, 0);
		break;
	}

	return 0;
}