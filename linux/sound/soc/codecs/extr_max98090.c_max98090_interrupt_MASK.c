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
struct max98090_priv {int /*<<< orphan*/  jack_work; int /*<<< orphan*/  pll_work; int /*<<< orphan*/  regmap; struct snd_soc_component* component; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int M98090_CLD_MASK ; 
 unsigned int M98090_DRCACT_MASK ; 
 unsigned int M98090_DRCCLP_MASK ; 
 unsigned int M98090_JDET_MASK ; 
 int /*<<< orphan*/  M98090_REG_DEVICE_STATUS ; 
 int /*<<< orphan*/  M98090_REG_INTERRUPT_S ; 
 unsigned int M98090_SLD_MASK ; 
 unsigned int M98090_ULK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct max98090_priv *max98090 = data;
	struct snd_soc_component *component = max98090->component;
	int ret;
	unsigned int mask;
	unsigned int active;

	/* Treat interrupt before codec is initialized as spurious */
	if (component == NULL)
		return IRQ_NONE;

	FUNC0(component->dev, "***** max98090_interrupt *****\n");

	ret = FUNC5(max98090->regmap, M98090_REG_INTERRUPT_S, &mask);

	if (ret != 0) {
		FUNC1(component->dev,
			"failed to read M98090_REG_INTERRUPT_S: %d\n",
			ret);
		return IRQ_NONE;
	}

	ret = FUNC5(max98090->regmap, M98090_REG_DEVICE_STATUS, &active);

	if (ret != 0) {
		FUNC1(component->dev,
			"failed to read M98090_REG_DEVICE_STATUS: %d\n",
			ret);
		return IRQ_NONE;
	}

	FUNC0(component->dev, "active=0x%02x mask=0x%02x -> active=0x%02x\n",
		active, mask, active & mask);

	active &= mask;

	if (!active)
		return IRQ_NONE;

	if (active & M98090_CLD_MASK)
		FUNC1(component->dev, "M98090_CLD_MASK\n");

	if (active & M98090_SLD_MASK)
		FUNC0(component->dev, "M98090_SLD_MASK\n");

	if (active & M98090_ULK_MASK) {
		FUNC0(component->dev, "M98090_ULK_MASK\n");
		FUNC6(&max98090->pll_work);
	}

	if (active & M98090_JDET_MASK) {
		FUNC0(component->dev, "M98090_JDET_MASK\n");

		FUNC3(component->dev, 100);

		FUNC4(system_power_efficient_wq,
				   &max98090->jack_work,
				   FUNC2(100));
	}

	if (active & M98090_DRCACT_MASK)
		FUNC0(component->dev, "M98090_DRCACT_MASK\n");

	if (active & M98090_DRCCLP_MASK)
		FUNC1(component->dev, "M98090_DRCCLP_MASK\n");

	return IRQ_HANDLED;
}