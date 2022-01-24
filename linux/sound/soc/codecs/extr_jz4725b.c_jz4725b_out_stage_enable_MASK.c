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
struct regmap {int dummy; } ;
struct jz_icdc {struct regmap* regmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  JZ4725B_CODEC_REG_IFR ; 
 int /*<<< orphan*/  REG_IFR_RAMP_DOWN_DONE_OFFSET ; 
 int /*<<< orphan*/  REG_IFR_RAMP_UP_DONE_OFFSET ; 
#define  SND_SOC_DAPM_POST_PMD 131 
#define  SND_SOC_DAPM_POST_PMU 130 
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct jz_icdc* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
				    struct snd_kcontrol *kcontrol,
				    int event)
{
	struct snd_soc_component *codec = FUNC4(w->dapm);
	struct jz_icdc *icdc = FUNC3(codec);
	struct regmap *map = icdc->regmap;
	unsigned int val;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		return FUNC2(map, JZ4725B_CODEC_REG_IFR,
					  FUNC0(REG_IFR_RAMP_UP_DONE_OFFSET), 0);
	case SND_SOC_DAPM_POST_PMU:
		return FUNC1(map, JZ4725B_CODEC_REG_IFR,
			       val, val & FUNC0(REG_IFR_RAMP_UP_DONE_OFFSET),
			       100000, 500000);
	case SND_SOC_DAPM_PRE_PMD:
		return FUNC2(map, JZ4725B_CODEC_REG_IFR,
				FUNC0(REG_IFR_RAMP_DOWN_DONE_OFFSET), 0);
	case SND_SOC_DAPM_POST_PMD:
		return FUNC1(map, JZ4725B_CODEC_REG_IFR,
			       val, val & FUNC0(REG_IFR_RAMP_DOWN_DONE_OFFSET),
			       100000, 500000);
	default:
		return -EINVAL;
	}
}