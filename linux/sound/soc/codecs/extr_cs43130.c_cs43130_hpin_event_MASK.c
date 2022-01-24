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
struct cs43130_private {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  hpin_postpmu_seq ; 
 int /*<<< orphan*/  hpin_prepmd_seq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs43130_private* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
			      struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct cs43130_private *cs43130 = FUNC3(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMD:
		FUNC2(cs43130->regmap, hpin_prepmd_seq,
				       FUNC0(hpin_prepmd_seq));
		break;
	case SND_SOC_DAPM_PRE_PMU:
		FUNC2(cs43130->regmap, hpin_postpmu_seq,
				       FUNC0(hpin_postpmu_seq));
		break;
	default:
		FUNC1(component->dev, "Invalid HPIN event = 0x%x\n", event);
		return -EINVAL;
	}
	return 0;
}