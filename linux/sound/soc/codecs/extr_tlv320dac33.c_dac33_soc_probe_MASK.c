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
struct tlv320dac33_priv {int irq; int /*<<< orphan*/  work; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int FUNC2 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  dac33_interrupt_handler ; 
 int /*<<< orphan*/  dac33_mode_snd_controls ; 
 int FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  dac33_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tlv320dac33_priv* FUNC7 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct tlv320dac33_priv *dac33 = FUNC7(component);
	int ret = 0;

	dac33->component = component;

	/* Read the tlv320dac33 ID registers */
	ret = FUNC2(component, 1);
	if (ret != 0) {
		FUNC4(component->dev, "Failed to power up component: %d\n", ret);
		goto err_power;
	}
	ret = FUNC3(component);
	FUNC2(component, 0);

	if (ret < 0) {
		FUNC4(component->dev, "Failed to read chip ID: %d\n", ret);
		ret = -ENODEV;
		goto err_power;
	}

	/* Check if the IRQ number is valid and request it */
	if (dac33->irq >= 0) {
		ret = FUNC5(dac33->irq, dac33_interrupt_handler,
				  IRQF_TRIGGER_RISING,
				  component->name, component);
		if (ret < 0) {
			FUNC4(component->dev, "Could not request IRQ%d (%d)\n",
						dac33->irq, ret);
			dac33->irq = -1;
		}
		if (dac33->irq != -1) {
			FUNC1(&dac33->work, dac33_work);
		}
	}

	/* Only add the FIFO controls, if we have valid IRQ number */
	if (dac33->irq >= 0)
		FUNC6(component, dac33_mode_snd_controls,
				     FUNC0(dac33_mode_snd_controls));

err_power:
	return ret;
}