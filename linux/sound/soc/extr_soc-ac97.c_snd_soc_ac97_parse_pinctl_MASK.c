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
struct snd_ac97_reset_cfg {int gpio_sync; int gpio_sdata; int gpio_reset; struct pinctrl_state* pstate_run; struct pinctrl_state* pstate_warm_reset; struct pinctrl_state* pstate_reset; struct pinctrl_state* pctl; } ;
struct pinctrl_state {int dummy; } ;
typedef  struct pinctrl_state pinctrl ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
 int FUNC1 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (struct device*,int,char*) ; 
 struct pinctrl_state* FUNC4 (struct device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct pinctrl_state* FUNC6 (struct pinctrl_state*,char*) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
		struct snd_ac97_reset_cfg *cfg)
{
	struct pinctrl *p;
	struct pinctrl_state *state;
	int gpio;
	int ret;

	p = FUNC4(dev);
	if (FUNC0(p)) {
		FUNC2(dev, "Failed to get pinctrl\n");
		return FUNC1(p);
	}
	cfg->pctl = p;

	state = FUNC6(p, "ac97-reset");
	if (FUNC0(state)) {
		FUNC2(dev, "Can't find pinctrl state ac97-reset\n");
		return FUNC1(state);
	}
	cfg->pstate_reset = state;

	state = FUNC6(p, "ac97-warm-reset");
	if (FUNC0(state)) {
		FUNC2(dev, "Can't find pinctrl state ac97-warm-reset\n");
		return FUNC1(state);
	}
	cfg->pstate_warm_reset = state;

	state = FUNC6(p, "ac97-running");
	if (FUNC0(state)) {
		FUNC2(dev, "Can't find pinctrl state ac97-running\n");
		return FUNC1(state);
	}
	cfg->pstate_run = state;

	gpio = FUNC5(dev->of_node, "ac97-gpios", 0);
	if (gpio < 0) {
		FUNC2(dev, "Can't find ac97-sync gpio\n");
		return gpio;
	}
	ret = FUNC3(dev, gpio, "AC97 link sync");
	if (ret) {
		FUNC2(dev, "Failed requesting ac97-sync gpio\n");
		return ret;
	}
	cfg->gpio_sync = gpio;

	gpio = FUNC5(dev->of_node, "ac97-gpios", 1);
	if (gpio < 0) {
		FUNC2(dev, "Can't find ac97-sdata gpio %d\n", gpio);
		return gpio;
	}
	ret = FUNC3(dev, gpio, "AC97 link sdata");
	if (ret) {
		FUNC2(dev, "Failed requesting ac97-sdata gpio\n");
		return ret;
	}
	cfg->gpio_sdata = gpio;

	gpio = FUNC5(dev->of_node, "ac97-gpios", 2);
	if (gpio < 0) {
		FUNC2(dev, "Can't find ac97-reset gpio\n");
		return gpio;
	}
	ret = FUNC3(dev, gpio, "AC97 link reset");
	if (ret) {
		FUNC2(dev, "Failed requesting ac97-reset gpio\n");
		return ret;
	}
	cfg->gpio_reset = gpio;

	return 0;
}