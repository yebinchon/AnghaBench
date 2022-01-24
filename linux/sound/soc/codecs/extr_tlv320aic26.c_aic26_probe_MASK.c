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
struct aic26 {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC26_REG_AUDIO_CTRL3 ; 
 int /*<<< orphan*/  AIC26_REG_POWER_CTRL ; 
 int /*<<< orphan*/  AIC26_REG_RESET ; 
 int /*<<< orphan*/  dev_attr_keyclick ; 
 struct aic26* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct aic26 *aic26 = FUNC0(component->dev);
	int ret, reg;

	aic26->component = component;

	/* Reset the codec to power on defaults */
	FUNC4(component, AIC26_REG_RESET, 0xBB00);

	/* Power up CODEC */
	FUNC4(component, AIC26_REG_POWER_CTRL, 0);

	/* Audio Control 3 (master mode, fsref rate) */
	reg = FUNC3(component, AIC26_REG_AUDIO_CTRL3);
	reg &= ~0xf800;
	reg |= 0x0800; /* set master mode */
	FUNC4(component, AIC26_REG_AUDIO_CTRL3, reg);

	/* Register the sysfs files for debugging */
	/* Create SysFS files */
	ret = FUNC2(component->dev, &dev_attr_keyclick);
	if (ret)
		FUNC1(component->dev, "error creating sysfs files\n");

	return 0;
}