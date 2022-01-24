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
struct axg_tdm_formatter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (struct axg_tdm_formatter*) ; 
 int FUNC1 (struct axg_tdm_formatter*,struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct axg_tdm_formatter* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct snd_soc_dapm_widget *w,
			    struct snd_kcontrol *control,
			    int event)
{
	struct snd_soc_component *c = FUNC4(w->dapm);
	struct axg_tdm_formatter *formatter = FUNC3(c);
	int ret = 0;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		ret = FUNC1(formatter, w);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		FUNC0(formatter);
		break;

	default:
		FUNC2(c->dev, "Unexpected event %d\n", event);
		return -EINVAL;
	}

	return ret;
}