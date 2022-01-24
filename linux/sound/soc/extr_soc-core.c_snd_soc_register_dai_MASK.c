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
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct snd_soc_dai_driver {TYPE_1__ dobj; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ SND_SOC_DOBJ_PCM ; 
 int /*<<< orphan*/  client_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_dapm_context*,struct snd_soc_dai*) ; 
 struct snd_soc_dai* FUNC4 (struct snd_soc_component*,struct snd_soc_dai_driver*,int) ; 

int FUNC5(struct snd_soc_component *component,
	struct snd_soc_dai_driver *dai_drv)
{
	struct snd_soc_dapm_context *dapm =
		FUNC2(component);
	struct snd_soc_dai *dai;
	int ret;

	if (dai_drv->dobj.type != SND_SOC_DOBJ_PCM) {
		FUNC0(component->dev, "Invalid dai type %d\n",
			dai_drv->dobj.type);
		return -EINVAL;
	}

	FUNC1(&client_mutex);
	dai = FUNC4(component, dai_drv, false);
	if (!dai)
		return -ENOMEM;

	/*
	 * Create the DAI widgets here. After adding DAIs, topology may
	 * also add routes that need these widgets as source or sink.
	 */
	ret = FUNC3(dapm, dai);
	if (ret != 0) {
		FUNC0(component->dev,
			"Failed to create DAI widgets %d\n", ret);
	}

	return ret;
}