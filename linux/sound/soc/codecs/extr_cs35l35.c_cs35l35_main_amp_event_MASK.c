#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int bst_vctl; int /*<<< orphan*/  bst_pdn_fet_on; } ;
struct cs35l35_private {TYPE_1__ pdata; int /*<<< orphan*/  regmap; int /*<<< orphan*/  pdm_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  CS35L35_AMP_MUTE_MASK ; 
 int CS35L35_AMP_MUTE_SHIFT ; 
 int /*<<< orphan*/  CS35L35_BST_CTL_MASK ; 
 int CS35L35_BST_CTL_SHIFT ; 
 int /*<<< orphan*/  CS35L35_BST_CVTR_V_CTL ; 
 int /*<<< orphan*/  CS35L35_INT_STATUS_1 ; 
 int CS35L35_PDN_BST_FETOFF_SHIFT ; 
 int CS35L35_PDN_BST_FETON_SHIFT ; 
 int /*<<< orphan*/  CS35L35_PDN_BST_MASK ; 
 int /*<<< orphan*/  CS35L35_PROTECT_CTL ; 
 int /*<<< orphan*/  CS35L35_PWRCTL2 ; 
#define  SND_SOC_DAPM_POST_PMD 131 
#define  SND_SOC_DAPM_POST_PMU 130 
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cs35l35_private* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct cs35l35_private *cs35l35 = FUNC4(component);
	unsigned int reg[4];
	int i;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		if (cs35l35->pdata.bst_pdn_fet_on)
			FUNC3(cs35l35->regmap, CS35L35_PWRCTL2,
				CS35L35_PDN_BST_MASK,
				0 << CS35L35_PDN_BST_FETON_SHIFT);
		else
			FUNC3(cs35l35->regmap, CS35L35_PWRCTL2,
				CS35L35_PDN_BST_MASK,
				0 << CS35L35_PDN_BST_FETOFF_SHIFT);
		break;
	case SND_SOC_DAPM_POST_PMU:
		FUNC6(5000, 5100);
		/* If in PDM mode we must use VP for Voltage control */
		if (cs35l35->pdm_mode)
			FUNC3(cs35l35->regmap,
					CS35L35_BST_CVTR_V_CTL,
					CS35L35_BST_CTL_MASK,
					0 << CS35L35_BST_CTL_SHIFT);

		FUNC3(cs35l35->regmap, CS35L35_PROTECT_CTL,
			CS35L35_AMP_MUTE_MASK, 0);

		for (i = 0; i < 2; i++)
			FUNC2(cs35l35->regmap, CS35L35_INT_STATUS_1,
					&reg, FUNC0(reg));

		break;
	case SND_SOC_DAPM_PRE_PMD:
		FUNC3(cs35l35->regmap, CS35L35_PROTECT_CTL,
				CS35L35_AMP_MUTE_MASK,
				1 << CS35L35_AMP_MUTE_SHIFT);
		if (cs35l35->pdata.bst_pdn_fet_on)
			FUNC3(cs35l35->regmap, CS35L35_PWRCTL2,
				CS35L35_PDN_BST_MASK,
				1 << CS35L35_PDN_BST_FETON_SHIFT);
		else
			FUNC3(cs35l35->regmap, CS35L35_PWRCTL2,
				CS35L35_PDN_BST_MASK,
				1 << CS35L35_PDN_BST_FETOFF_SHIFT);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC6(5000, 5100);
		/*
		 * If PDM mode we should switch back to pdata value
		 * for Voltage control when we go down
		 */
		if (cs35l35->pdm_mode)
			FUNC3(cs35l35->regmap,
					CS35L35_BST_CVTR_V_CTL,
					CS35L35_BST_CTL_MASK,
					cs35l35->pdata.bst_vctl
					<< CS35L35_BST_CTL_SHIFT);

		break;
	default:
		FUNC1(component->dev, "Invalid event = 0x%x\n", event);
	}
	return 0;
}