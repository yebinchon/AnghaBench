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
struct cs43130_private {unsigned int hpload_stat; int hpload_done; int /*<<< orphan*/  jack; int /*<<< orphan*/  work; int /*<<< orphan*/  wq; scalar_t__ dc_meas; int /*<<< orphan*/  hpload_evt; int /*<<< orphan*/  pll_rdy; int /*<<< orphan*/  xtal_rdy; int /*<<< orphan*/  regmap; struct snd_soc_component* component; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 unsigned int CS43130_HPLOAD_AC_INT ; 
 unsigned int CS43130_HPLOAD_DC_INT ; 
 unsigned int CS43130_HPLOAD_NO_DC_INT ; 
 unsigned int CS43130_HPLOAD_OFF_INT ; 
 unsigned int CS43130_HPLOAD_ON_INT ; 
 unsigned int CS43130_HPLOAD_OOR_INT ; 
 unsigned int CS43130_HPLOAD_UNPLUG_INT ; 
 unsigned int CS43130_HP_PLUG_INT ; 
 unsigned int CS43130_HP_UNPLUG_INT ; 
 scalar_t__ CS43130_INT_MASK_1 ; 
 scalar_t__ CS43130_INT_STATUS_1 ; 
 int /*<<< orphan*/  CS43130_JACK_MASK ; 
 int CS43130_NUM_INT ; 
 unsigned int CS43130_PLL_RDY_INT ; 
 unsigned int CS43130_XTAL_ERR_INT ; 
 unsigned int CS43130_XTAL_RDY_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SND_JACK_MECHANICAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct cs43130_private *cs43130 = (struct cs43130_private *)data;
	struct snd_soc_component *component = cs43130->component;
	unsigned int stickies[CS43130_NUM_INT];
	unsigned int irq_occurrence = 0;
	unsigned int masks[CS43130_NUM_INT];
	int i, j;

	for (i = 0; i < FUNC0(stickies); i++) {
		FUNC5(cs43130->regmap, CS43130_INT_STATUS_1 + i,
			    &stickies[i]);
		FUNC5(cs43130->regmap, CS43130_INT_MASK_1 + i,
			    &masks[i]);
	}

	for (i = 0; i < FUNC0(stickies); i++) {
		stickies[i] = stickies[i] & (~masks[i]);
		for (j = 0; j < 8; j++)
			irq_occurrence += (stickies[i] >> j) & 1;
	}
	FUNC2(component->dev, "number of interrupts occurred (%u)\n",
		irq_occurrence);

	if (!irq_occurrence)
		return IRQ_NONE;

	if (stickies[0] & CS43130_XTAL_RDY_INT) {
		FUNC1(&cs43130->xtal_rdy);
		return IRQ_HANDLED;
	}

	if (stickies[0] & CS43130_PLL_RDY_INT) {
		FUNC1(&cs43130->pll_rdy);
		return IRQ_HANDLED;
	}

	if (stickies[3] & CS43130_HPLOAD_NO_DC_INT) {
		cs43130->hpload_stat = stickies[3];
		FUNC3(component->dev,
			"DC load has not completed before AC load (%x)\n",
			cs43130->hpload_stat);
		FUNC1(&cs43130->hpload_evt);
		return IRQ_HANDLED;
	}

	if (stickies[3] & CS43130_HPLOAD_UNPLUG_INT) {
		cs43130->hpload_stat = stickies[3];
		FUNC3(component->dev, "HP unplugged during measurement (%x)\n",
			cs43130->hpload_stat);
		FUNC1(&cs43130->hpload_evt);
		return IRQ_HANDLED;
	}

	if (stickies[3] & CS43130_HPLOAD_OOR_INT) {
		cs43130->hpload_stat = stickies[3];
		FUNC3(component->dev, "HP load out of range (%x)\n",
			cs43130->hpload_stat);
		FUNC1(&cs43130->hpload_evt);
		return IRQ_HANDLED;
	}

	if (stickies[3] & CS43130_HPLOAD_AC_INT) {
		cs43130->hpload_stat = stickies[3];
		FUNC2(component->dev, "HP AC load measurement done (%x)\n",
			cs43130->hpload_stat);
		FUNC1(&cs43130->hpload_evt);
		return IRQ_HANDLED;
	}

	if (stickies[3] & CS43130_HPLOAD_DC_INT) {
		cs43130->hpload_stat = stickies[3];
		FUNC2(component->dev, "HP DC load measurement done (%x)\n",
			cs43130->hpload_stat);
		FUNC1(&cs43130->hpload_evt);
		return IRQ_HANDLED;
	}

	if (stickies[3] & CS43130_HPLOAD_ON_INT) {
		cs43130->hpload_stat = stickies[3];
		FUNC2(component->dev, "HP load state machine on done (%x)\n",
			cs43130->hpload_stat);
		FUNC1(&cs43130->hpload_evt);
		return IRQ_HANDLED;
	}

	if (stickies[3] & CS43130_HPLOAD_OFF_INT) {
		cs43130->hpload_stat = stickies[3];
		FUNC2(component->dev, "HP load state machine off done (%x)\n",
			cs43130->hpload_stat);
		FUNC1(&cs43130->hpload_evt);
		return IRQ_HANDLED;
	}

	if (stickies[0] & CS43130_XTAL_ERR_INT) {
		FUNC3(component->dev, "Crystal err: clock is not running\n");
		return IRQ_HANDLED;
	}

	if (stickies[0] & CS43130_HP_UNPLUG_INT) {
		FUNC2(component->dev, "HP unplugged\n");
		cs43130->hpload_done = false;
		FUNC6(&cs43130->jack, 0, CS43130_JACK_MASK);
		return IRQ_HANDLED;
	}

	if (stickies[0] & CS43130_HP_PLUG_INT) {
		if (cs43130->dc_meas && !cs43130->hpload_done &&
		    !FUNC7(&cs43130->work)) {
			FUNC2(component->dev, "HP load queue work\n");
			FUNC4(cs43130->wq, &cs43130->work);
		}

		FUNC6(&cs43130->jack, SND_JACK_MECHANICAL,
				    CS43130_JACK_MASK);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}