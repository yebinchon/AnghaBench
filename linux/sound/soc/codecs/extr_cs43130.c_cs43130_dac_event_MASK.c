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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs43130_private {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CS43130_CHIP_ID 134 
 int /*<<< orphan*/  CS43130_DXD1 ; 
 int /*<<< orphan*/  CS43130_DXD12 ; 
 int /*<<< orphan*/  CS43130_DXD13 ; 
#define  CS43131_CHIP_ID 133 
#define  CS43198_CHIP_ID 132 
#define  CS4399_CHIP_ID 131 
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 130 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  dac_postpmd_seq ; 
 int /*<<< orphan*/  dac_postpmu_seq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  pop_free_seq ; 
 int /*<<< orphan*/  pop_free_seq2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cs43130_private* FUNC5 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dapm_widget *w,
			     struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC6(w->dapm);
	struct cs43130_private *cs43130 = FUNC5(component);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		switch (cs43130->dev_id) {
		case CS43130_CHIP_ID:
		case CS4399_CHIP_ID:
			FUNC3(cs43130->regmap, pop_free_seq,
					       FUNC0(pop_free_seq));
			break;
		case CS43131_CHIP_ID:
		case CS43198_CHIP_ID:
			FUNC3(cs43130->regmap, pop_free_seq2,
					       FUNC0(pop_free_seq2));
			break;
		}
		break;
	case SND_SOC_DAPM_POST_PMU:
		FUNC7(10000, 10050);

		FUNC4(cs43130->regmap, CS43130_DXD1, 0x99);

		switch (cs43130->dev_id) {
		case CS43130_CHIP_ID:
		case CS4399_CHIP_ID:
			FUNC3(cs43130->regmap, dac_postpmu_seq,
					       FUNC0(dac_postpmu_seq));
			/*
			 * Per datasheet, Sec. PCM Power-Up Sequence.
			 * According to Design, CS43130_DXD12 must be 0 to meet
			 * THDN and Dynamic Range spec.
			 */
			FUNC2(1000);
			FUNC4(cs43130->regmap, CS43130_DXD12, 0);
			break;
		case CS43131_CHIP_ID:
		case CS43198_CHIP_ID:
			FUNC7(12000, 12010);
			FUNC4(cs43130->regmap, CS43130_DXD13, 0);
			break;
		}

		FUNC4(cs43130->regmap, CS43130_DXD1, 0);
		break;
	case SND_SOC_DAPM_POST_PMD:
		switch (cs43130->dev_id) {
		case CS43130_CHIP_ID:
		case CS4399_CHIP_ID:
			FUNC3(cs43130->regmap, dac_postpmd_seq,
					       FUNC0(dac_postpmd_seq));
			break;
		}
		break;
	default:
		FUNC1(component->dev, "Invalid DAC event = 0x%x\n", event);
		return -EINVAL;
	}
	return 0;
}