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
typedef  void* u32 ;
struct snd_soc_dai_link_component {struct device_node* of_node; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;
struct asoc_simple_dai {int /*<<< orphan*/  clk_direction; void* sysclk; struct clk* clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 void* FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,struct device_node*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,void**) ; 

int FUNC5(struct device *dev,
			  struct device_node *node,
			  struct asoc_simple_dai *simple_dai,
			  struct snd_soc_dai_link_component *dlc)
{
	struct clk *clk;
	u32 val;

	/*
	 * Parse dai->sysclk come from "clocks = <&xxx>"
	 * (if system has common clock)
	 *  or "system-clock-frequency = <xxx>"
	 *  or device's module clock.
	 */
	clk = FUNC2(dev, node, NULL);
	if (!FUNC0(clk)) {
		simple_dai->sysclk = FUNC1(clk);

		simple_dai->clk = clk;
	} else if (!FUNC4(node, "system-clock-frequency", &val)) {
		simple_dai->sysclk = val;
	} else {
		clk = FUNC2(dev, dlc->of_node, NULL);
		if (!FUNC0(clk))
			simple_dai->sysclk = FUNC1(clk);
	}

	if (FUNC3(node, "system-clock-direction-out"))
		simple_dai->clk_direction = SND_SOC_CLOCK_OUT;

	return 0;
}