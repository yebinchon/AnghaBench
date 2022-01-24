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
struct simple_amp {int /*<<< orphan*/  gpiod_enable; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct simple_amp* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
		     struct snd_kcontrol *control, int event)
{
	struct snd_soc_component *c = FUNC3(w->dapm);
	struct simple_amp *priv = FUNC2(c);
	int val;

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		val = 1;
		break;
	case SND_SOC_DAPM_PRE_PMD:
		val = 0;
		break;
	default:
		FUNC0(1, "Unexpected event");
		return -EINVAL;
	}

	FUNC1(priv->gpiod_enable, val);

	return 0;
}