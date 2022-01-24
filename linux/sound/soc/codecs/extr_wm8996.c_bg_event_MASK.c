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
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 struct snd_soc_component* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
		    struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC1(w->dapm);
	int ret = 0;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC3(component);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC2(component);
		break;
	default:
		FUNC0(1, "Invalid event %d\n", event);
		ret = -EINVAL;
	}

	return ret;
}