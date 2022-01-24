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
typedef  int u8 ;
struct snd_soc_dapm_widget {int shift; int /*<<< orphan*/  reg; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct max98095_priv {int lin_state; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 scalar_t__ FUNC0 (int) ; 
 struct max98095_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
			     int event, u8 channel)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	struct max98095_priv *max98095 = FUNC1(component);
	u8 *state;

	if (FUNC0(!(channel == 1 || channel == 2)))
		return -EINVAL;

	state = &max98095->lin_state;

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		*state |= channel;
		FUNC2(component, w->reg,
			(1 << w->shift), (1 << w->shift));
		break;
	case SND_SOC_DAPM_POST_PMD:
		*state &= ~channel;
		if (*state == 0) {
			FUNC2(component, w->reg,
				(1 << w->shift), 0);
		}
		break;
	default:
		return -EINVAL;
	}

	return 0;
}