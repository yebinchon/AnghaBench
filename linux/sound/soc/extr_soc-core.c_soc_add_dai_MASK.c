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
struct snd_soc_dai_driver {scalar_t__ id; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * name; } ;
struct snd_soc_dai {scalar_t__ id; int /*<<< orphan*/ * name; int /*<<< orphan*/  list; struct snd_soc_dai_driver* driver; struct device* dev; struct snd_soc_component* component; } ;
struct snd_soc_component {scalar_t__ num_dai; int /*<<< orphan*/  dai_list; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct device*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device*,struct snd_soc_dai_driver*) ; 
 int /*<<< orphan*/ * FUNC3 (struct device*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dai*) ; 
 struct snd_soc_dai* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  null_dai_ops ; 

__attribute__((used)) static struct snd_soc_dai *FUNC7(struct snd_soc_component *component,
	struct snd_soc_dai_driver *dai_drv,
	bool legacy_dai_naming)
{
	struct device *dev = component->dev;
	struct snd_soc_dai *dai;

	FUNC0(dev, "ASoC: dynamically register DAI %s\n", FUNC1(dev));

	dai = FUNC5(sizeof(struct snd_soc_dai), GFP_KERNEL);
	if (dai == NULL)
		return NULL;

	/*
	 * Back in the old days when we still had component-less DAIs,
	 * instead of having a static name, component-less DAIs would
	 * inherit the name of the parent device so it is possible to
	 * register multiple instances of the DAI. We still need to keep
	 * the same naming style even though those DAIs are not
	 * component-less anymore.
	 */
	if (legacy_dai_naming &&
	    (dai_drv->id == 0 || dai_drv->name == NULL)) {
		dai->name = FUNC3(dev, &dai->id);
	} else {
		dai->name = FUNC2(dev, dai_drv);
		if (dai_drv->id)
			dai->id = dai_drv->id;
		else
			dai->id = component->num_dai;
	}
	if (dai->name == NULL) {
		FUNC4(dai);
		return NULL;
	}

	dai->component = component;
	dai->dev = dev;
	dai->driver = dai_drv;
	if (!dai->driver->ops)
		dai->driver->ops = &null_dai_ops;

	/* see for_each_component_dais */
	FUNC6(&dai->list, &component->dai_list);
	component->num_dai++;

	FUNC0(dev, "ASoC: Registered DAI '%s'\n", dai->name);
	return dai;
}