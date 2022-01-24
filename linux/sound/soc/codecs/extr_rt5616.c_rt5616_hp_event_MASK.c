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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int RT5616_CP_FQ1_MASK ; 
 int RT5616_CP_FQ1_SFT ; 
 int RT5616_CP_FQ2_MASK ; 
 int RT5616_CP_FQ2_SFT ; 
 int RT5616_CP_FQ3_MASK ; 
 int RT5616_CP_FQ3_SFT ; 
 int RT5616_CP_FQ_12_KHZ ; 
 int RT5616_CP_FQ_192_KHZ ; 
 int RT5616_CP_FQ_96_KHZ ; 
 int /*<<< orphan*/  RT5616_DEPOP_M1 ; 
 int /*<<< orphan*/  RT5616_DEPOP_M3 ; 
 int RT5616_HPD_PS_DIS ; 
 int RT5616_HPD_PS_EN ; 
 int RT5616_HPD_PS_MASK ; 
 int /*<<< orphan*/  RT5616_HP_CALIB_AMP_DET ; 
 int RT5616_HP_L_SMT_DIS ; 
 int RT5616_HP_L_SMT_EN ; 
 int RT5616_HP_L_SMT_MASK ; 
 int RT5616_HP_R_SMT_DIS ; 
 int RT5616_HP_R_SMT_EN ; 
 int RT5616_HP_R_SMT_MASK ; 
 int RT5616_HP_SG_DIS ; 
 int RT5616_HP_SG_EN ; 
 int RT5616_HP_SG_MASK ; 
 int /*<<< orphan*/  RT5616_HP_VOL ; 
 int RT5616_L_MUTE ; 
 scalar_t__ RT5616_MAMP_INT_REG2 ; 
 scalar_t__ RT5616_PR_BASE ; 
 int RT5616_RSTN_DIS ; 
 int RT5616_RSTN_EN ; 
 int RT5616_RSTN_MASK ; 
 int RT5616_RSTP_DIS ; 
 int RT5616_RSTP_EN ; 
 int RT5616_RSTP_MASK ; 
 int RT5616_R_MUTE ; 
 int RT5616_SMT_TRIG_EN ; 
 int RT5616_SMT_TRIG_MASK ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,scalar_t__,int) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
			   struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		/* headphone unmute sequence */
		FUNC1(component, RT5616_DEPOP_M3,
				    RT5616_CP_FQ1_MASK | RT5616_CP_FQ2_MASK |
				    RT5616_CP_FQ3_MASK,
				    RT5616_CP_FQ_192_KHZ << RT5616_CP_FQ1_SFT |
				    RT5616_CP_FQ_12_KHZ << RT5616_CP_FQ2_SFT |
				    RT5616_CP_FQ_192_KHZ << RT5616_CP_FQ3_SFT);
		FUNC2(component, RT5616_PR_BASE +
			      RT5616_MAMP_INT_REG2, 0xfc00);
		FUNC1(component, RT5616_DEPOP_M1,
				    RT5616_SMT_TRIG_MASK, RT5616_SMT_TRIG_EN);
		FUNC1(component, RT5616_DEPOP_M1,
				    RT5616_RSTN_MASK, RT5616_RSTN_EN);
		FUNC1(component, RT5616_DEPOP_M1,
				    RT5616_RSTN_MASK | RT5616_HP_L_SMT_MASK |
				    RT5616_HP_R_SMT_MASK, RT5616_RSTN_DIS |
				    RT5616_HP_L_SMT_EN | RT5616_HP_R_SMT_EN);
		FUNC1(component, RT5616_HP_VOL,
				    RT5616_L_MUTE | RT5616_R_MUTE, 0);
		FUNC0(100);
		FUNC1(component, RT5616_DEPOP_M1,
				    RT5616_HP_SG_MASK | RT5616_HP_L_SMT_MASK |
				    RT5616_HP_R_SMT_MASK, RT5616_HP_SG_DIS |
				    RT5616_HP_L_SMT_DIS | RT5616_HP_R_SMT_DIS);
		FUNC0(20);
		FUNC1(component, RT5616_HP_CALIB_AMP_DET,
				    RT5616_HPD_PS_MASK, RT5616_HPD_PS_EN);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		/* headphone mute sequence */
		FUNC1(component, RT5616_DEPOP_M3,
				    RT5616_CP_FQ1_MASK | RT5616_CP_FQ2_MASK |
				    RT5616_CP_FQ3_MASK,
				    RT5616_CP_FQ_96_KHZ << RT5616_CP_FQ1_SFT |
				    RT5616_CP_FQ_12_KHZ << RT5616_CP_FQ2_SFT |
				    RT5616_CP_FQ_96_KHZ << RT5616_CP_FQ3_SFT);
		FUNC2(component, RT5616_PR_BASE +
			      RT5616_MAMP_INT_REG2, 0xfc00);
		FUNC1(component, RT5616_DEPOP_M1,
				    RT5616_HP_SG_MASK, RT5616_HP_SG_EN);
		FUNC1(component, RT5616_DEPOP_M1,
				    RT5616_RSTP_MASK, RT5616_RSTP_EN);
		FUNC1(component, RT5616_DEPOP_M1,
				    RT5616_RSTP_MASK | RT5616_HP_L_SMT_MASK |
				    RT5616_HP_R_SMT_MASK, RT5616_RSTP_DIS |
				    RT5616_HP_L_SMT_EN | RT5616_HP_R_SMT_EN);
		FUNC1(component, RT5616_HP_CALIB_AMP_DET,
				    RT5616_HPD_PS_MASK, RT5616_HPD_PS_DIS);
		FUNC0(90);
		FUNC1(component, RT5616_HP_VOL,
				    RT5616_L_MUTE | RT5616_R_MUTE,
				    RT5616_L_MUTE | RT5616_R_MUTE);
		FUNC0(30);
		break;

	default:
		return 0;
	}

	return 0;
}