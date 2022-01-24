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
struct tscs454 {scalar_t__ sysclk_src_id; unsigned long bclk_freq; int /*<<< orphan*/  sysclk; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct pll_ctl {TYPE_1__* settings; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PLL_INPUT_BCLK ; 
 int PLL_REG_SETTINGS_COUNT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct pll_ctl* FUNC2 (unsigned long) ; 
 struct tscs454* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct tscs454 *tscs454 = FUNC3(component);
	struct pll_ctl const *pll_ctl;
	unsigned long freq;
	int i;
	int ret;

	if (tscs454->sysclk_src_id < PLL_INPUT_BCLK)
		freq = FUNC0(tscs454->sysclk);
	else
		freq = tscs454->bclk_freq;
	pll_ctl = FUNC2(freq);
	if (!pll_ctl) {
		ret = -EINVAL;
		FUNC1(component->dev,
				"Invalid PLL input %lu (%d)\n", freq, ret);
		return ret;
	}

	for (i = 0; i < PLL_REG_SETTINGS_COUNT; ++i) {
		ret = FUNC4(component,
				pll_ctl->settings[i].addr,
				pll_ctl->settings[i].val);
		if (ret < 0) {
			FUNC1(component->dev,
					"Failed to set pll setting (%d)\n",
					ret);
			return ret;
		}
	}

	return 0;
}