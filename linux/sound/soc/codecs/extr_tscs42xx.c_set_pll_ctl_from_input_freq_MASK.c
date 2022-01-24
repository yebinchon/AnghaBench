#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct pll_ctl {TYPE_1__* settings; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int PLL_REG_SETTINGS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int const,...) ; 
 struct pll_ctl* FUNC1 (int const) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component,
		const int input_freq)
{
	int ret;
	int i;
	const struct pll_ctl *pll_ctl;

	pll_ctl = FUNC1(input_freq);
	if (!pll_ctl) {
		ret = -EINVAL;
		FUNC0(component->dev, "No PLL input entry for %d (%d)\n",
			input_freq, ret);
		return ret;
	}

	for (i = 0; i < PLL_REG_SETTINGS_COUNT; ++i) {
		ret = FUNC2(component,
			pll_ctl->settings[i].addr,
			pll_ctl->settings[i].mask,
			pll_ctl->settings[i].val);
		if (ret < 0) {
			FUNC0(component->dev, "Failed to set pll ctl (%d)\n",
				ret);
			return ret;
		}
	}

	return 0;
}