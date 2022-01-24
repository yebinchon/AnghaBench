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
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 struct snd_soc_component* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dapm_widget *w,
		      struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC0(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC1(component, 1);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC1(component, 0);
		break;
	}
	return 0;
}