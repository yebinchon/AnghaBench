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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5616_priv {struct snd_soc_component* component; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct rt5616_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct rt5616_priv *rt5616 = FUNC2(component);

	/* Check if MCLK provided */
	rt5616->mclk = FUNC1(component->dev, "mclk");
	if (FUNC0(rt5616->mclk) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	rt5616->component = component;

	return 0;
}