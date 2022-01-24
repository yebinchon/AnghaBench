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
struct snd_soc_component {int /*<<< orphan*/  dev; struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct cs43130_private {scalar_t__ xtal_ibias; int hpload_done; int /*<<< orphan*/  regmap; int /*<<< orphan*/  work; int /*<<< orphan*/  wq; scalar_t__ dc_meas; int /*<<< orphan*/  jack; struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS43130_CRYSTAL_SET ; 
 int /*<<< orphan*/  CS43130_HP_DETECT ; 
 int CS43130_HP_DETECT_CTRL_MASK ; 
 int CS43130_HP_PLUG_INT ; 
 int /*<<< orphan*/  CS43130_HP_STATUS ; 
 int CS43130_HP_UNPLUG_INT ; 
 int /*<<< orphan*/  CS43130_INT_MASK_1 ; 
 int /*<<< orphan*/  CS43130_INT_STATUS_1 ; 
 int /*<<< orphan*/  CS43130_JACK_MASK ; 
 int CS43130_XTAL_ERR_INT ; 
 int CS43130_XTAL_IBIAS_MASK ; 
 scalar_t__ CS43130_XTAL_UNUSED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  cs43130_imp_meas ; 
 int /*<<< orphan*/  dev_attr_hpload_ac_l ; 
 int /*<<< orphan*/  dev_attr_hpload_ac_r ; 
 int /*<<< orphan*/  dev_attr_hpload_dc_l ; 
 int /*<<< orphan*/  dev_attr_hpload_dc_r ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct snd_soc_card*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cs43130_private* FUNC7 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	int ret;
	struct cs43130_private *cs43130 = FUNC7(component);
	struct snd_soc_card *card = component->card;
	unsigned int reg;

	cs43130->component = component;

	if (cs43130->xtal_ibias != CS43130_XTAL_UNUSED) {
		FUNC5(cs43130->regmap, CS43130_CRYSTAL_SET,
				   CS43130_XTAL_IBIAS_MASK,
				   cs43130->xtal_ibias);
		FUNC5(cs43130->regmap, CS43130_INT_MASK_1,
				   CS43130_XTAL_ERR_INT, 0);
	}

	ret = FUNC6(card, "Headphone", CS43130_JACK_MASK,
				    &cs43130->jack, NULL, 0);
	if (ret < 0) {
		FUNC2(component->dev, "Cannot create jack\n");
		return ret;
	}

	cs43130->hpload_done = false;
	if (cs43130->dc_meas) {
		ret = FUNC3(component->dev, &dev_attr_hpload_dc_l);
		if (ret < 0)
			return ret;

		ret = FUNC3(component->dev, &dev_attr_hpload_dc_r);
		if (ret < 0)
			return ret;

		ret = FUNC3(component->dev, &dev_attr_hpload_ac_l);
		if (ret < 0)
			return ret;

		ret = FUNC3(component->dev, &dev_attr_hpload_ac_r);
		if (ret < 0)
			return ret;

		cs43130->wq = FUNC1("cs43130_hp");
		if (!cs43130->wq)
			return -ENOMEM;
		FUNC0(&cs43130->work, cs43130_imp_meas);
	}

	FUNC4(cs43130->regmap, CS43130_INT_STATUS_1, &reg);
	FUNC4(cs43130->regmap, CS43130_HP_STATUS, &reg);
	FUNC5(cs43130->regmap, CS43130_INT_MASK_1,
			   CS43130_HP_PLUG_INT | CS43130_HP_UNPLUG_INT, 0);
	FUNC5(cs43130->regmap, CS43130_HP_DETECT,
			   CS43130_HP_DETECT_CTRL_MASK, 0);
	FUNC5(cs43130->regmap, CS43130_HP_DETECT,
			   CS43130_HP_DETECT_CTRL_MASK,
			   CS43130_HP_DETECT_CTRL_MASK);

	return 0;
}