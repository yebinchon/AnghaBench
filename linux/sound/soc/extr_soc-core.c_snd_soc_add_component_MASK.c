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
struct snd_soc_dai_driver {int /*<<< orphan*/  capture; int /*<<< orphan*/  playback; } ;
struct snd_soc_component_driver {scalar_t__ endianness; } ;
struct snd_soc_component {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,struct snd_soc_component_driver const*,struct device*) ; 
 int FUNC5 (struct snd_soc_component*,struct snd_soc_dai_driver*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct device *dev,
			struct snd_soc_component *component,
			const struct snd_soc_component_driver *component_driver,
			struct snd_soc_dai_driver *dai_drv,
			int num_dai)
{
	int ret;
	int i;

	ret = FUNC4(component, component_driver, dev);
	if (ret)
		goto err_free;

	if (component_driver->endianness) {
		for (i = 0; i < num_dai; i++) {
			FUNC0(&dai_drv[i].playback);
			FUNC0(&dai_drv[i].capture);
		}
	}

	ret = FUNC5(component, dai_drv, num_dai);
	if (ret < 0) {
		FUNC1(dev, "ASoC: Failed to register DAIs: %d\n", ret);
		goto err_cleanup;
	}

	FUNC2(component);
	FUNC6();

	return 0;

err_cleanup:
	FUNC3(component);
err_free:
	return ret;
}