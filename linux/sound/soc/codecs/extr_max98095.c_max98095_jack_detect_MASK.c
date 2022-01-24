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
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct max98095_priv {struct snd_soc_jack* mic_jack; struct snd_soc_jack* headphone_jack; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M98095_013_JACK_INT_EN ; 
 int /*<<< orphan*/  M98095_IDDONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct snd_soc_component*) ; 
 struct max98095_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct snd_soc_component *component,
	struct snd_soc_jack *hp_jack, struct snd_soc_jack *mic_jack)
{
	struct max98095_priv *max98095 = FUNC3(component);
	struct i2c_client *client = FUNC5(component->dev);
	int ret = 0;

	max98095->headphone_jack = hp_jack;
	max98095->mic_jack = mic_jack;

	/* only progress if we have at least 1 jack pointer */
	if (!hp_jack && !mic_jack)
		return -EINVAL;

	FUNC1(component);

	/* enable interrupts for headphone jack detection */
	ret = FUNC4(component, M98095_013_JACK_INT_EN,
		M98095_IDDONE, M98095_IDDONE);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to cfg jack irqs %d\n", ret);
		return ret;
	}

	FUNC2(client->irq, component);
	return 0;
}