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
struct tlv320dac33_priv {int chip_power; scalar_t__ power_gpio; int /*<<< orphan*/  mutex; int /*<<< orphan*/  supplies; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tlv320dac33_priv* FUNC9 (struct snd_soc_component*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component, int power)
{
	struct tlv320dac33_priv *dac33 = FUNC9(component);
	int ret = 0;

	FUNC5(&dac33->mutex);

	/* Safety check */
	if (FUNC10(power == dac33->chip_power)) {
		FUNC2(component->dev, "Trying to set the same power state: %s\n",
			power ? "ON" : "OFF");
		goto exit;
	}

	if (power) {
		ret = FUNC8(FUNC0(dac33->supplies),
					  dac33->supplies);
		if (ret != 0) {
			FUNC3(component->dev,
				"Failed to enable supplies: %d\n", ret);
			goto exit;
		}

		if (dac33->power_gpio >= 0)
			FUNC4(dac33->power_gpio, 1);

		dac33->chip_power = 1;
	} else {
		FUNC1(component, 0);
		if (dac33->power_gpio >= 0)
			FUNC4(dac33->power_gpio, 0);

		ret = FUNC7(FUNC0(dac33->supplies),
					     dac33->supplies);
		if (ret != 0) {
			FUNC3(component->dev,
				"Failed to disable supplies: %d\n", ret);
			goto exit;
		}

		dac33->chip_power = 0;
	}

exit:
	FUNC6(&dac33->mutex);
	return ret;
}