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
struct snd_soc_component {int /*<<< orphan*/  regmap; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT6351_AFE_SGEN_CFG0 ; 
 int /*<<< orphan*/  MT6351_AFE_SGEN_CFG1 ; 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dapm_widget *w,
			 struct snd_kcontrol *kcontrol,
			 int event)
{
	struct snd_soc_component *cmpnt = FUNC1(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC0(cmpnt->regmap, MT6351_AFE_SGEN_CFG0,
				   0xffef, 0x0008);
		FUNC0(cmpnt->regmap, MT6351_AFE_SGEN_CFG1,
				   0xffff, 0x0101);
		break;
	default:
		break;
	}

	return 0;
}