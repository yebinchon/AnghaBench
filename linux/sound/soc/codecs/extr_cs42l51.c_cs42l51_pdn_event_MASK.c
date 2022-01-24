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
 int /*<<< orphan*/  CS42L51_POWER_CTL1 ; 
 int /*<<< orphan*/  CS42L51_POWER_CTL1_PDN ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC1(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMD:
		FUNC0(component, CS42L51_POWER_CTL1,
				    CS42L51_POWER_CTL1_PDN,
				    CS42L51_POWER_CTL1_PDN);
		break;
	default:
	case SND_SOC_DAPM_POST_PMD:
		FUNC0(component, CS42L51_POWER_CTL1,
				    CS42L51_POWER_CTL1_PDN, 0);
		break;
	}

	return 0;
}