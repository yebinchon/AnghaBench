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
struct snd_soc_dai_driver {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_component {TYPE_1__* driver; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  non_legacy_dai_naming; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_dai* FUNC3 (struct snd_soc_component*,struct snd_soc_dai_driver*,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
				 struct snd_soc_dai_driver *dai_drv,
				 size_t count)
{
	struct device *dev = component->dev;
	struct snd_soc_dai *dai;
	unsigned int i;
	int ret;

	FUNC0(dev, "ASoC: dai register %s #%zu\n", FUNC1(dev), count);

	for (i = 0; i < count; i++) {

		dai = FUNC3(component, dai_drv + i, count == 1 &&
				  !component->driver->non_legacy_dai_naming);
		if (dai == NULL) {
			ret = -ENOMEM;
			goto err;
		}
	}

	return 0;

err:
	FUNC2(component);

	return ret;
}