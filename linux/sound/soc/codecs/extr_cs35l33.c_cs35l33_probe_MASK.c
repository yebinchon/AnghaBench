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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int boost_ctl; int amp_drv_sel; int ramp_rate; int imon_adc_scale; scalar_t__ boost_ipk; } ;
struct cs35l33_private {int /*<<< orphan*/  regmap; TYPE_1__ pdata; scalar_t__ enable_soft_ramp; struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L33_ADC_CTL ; 
 int CS35L33_ALIVE_WD_DIS ; 
 int CS35L33_ALIVE_WD_DIS2 ; 
 int CS35L33_AMP_DRV_SEL_MASK ; 
 int CS35L33_AMP_DRV_SEL_SHIFT ; 
 int /*<<< orphan*/  CS35L33_BST_CTL1 ; 
 int /*<<< orphan*/  CS35L33_BST_CTL2 ; 
 int CS35L33_BST_CTL_MASK ; 
 int /*<<< orphan*/  CS35L33_CLASSD_CTL ; 
 int /*<<< orphan*/  CS35L33_DAC_CTL ; 
 int CS35L33_DIGSFT ; 
 int CS35L33_DSR_RATE ; 
 int CS35L33_IMON_SCALE ; 
 int /*<<< orphan*/  CS35L33_INT_MASK_1 ; 
 int CS35L33_M_AMP_SHORT ; 
 int CS35L33_M_CAL_ERR ; 
 int CS35L33_M_OTE ; 
 int CS35L33_M_OTW ; 
 int /*<<< orphan*/  CS35L33_PROTECT_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct cs35l33_private* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct cs35l33_private *cs35l33 = FUNC5(component);

	cs35l33->component = component;
	FUNC2(component->dev);

	FUNC4(cs35l33->regmap, CS35L33_PROTECT_CTL,
		CS35L33_ALIVE_WD_DIS, 0x8);
	FUNC4(cs35l33->regmap, CS35L33_BST_CTL2,
				CS35L33_ALIVE_WD_DIS2,
				CS35L33_ALIVE_WD_DIS2);

	/* Set Platform Data */
	FUNC4(cs35l33->regmap, CS35L33_BST_CTL1,
		CS35L33_BST_CTL_MASK, cs35l33->pdata.boost_ctl);
	FUNC4(cs35l33->regmap, CS35L33_CLASSD_CTL,
		CS35L33_AMP_DRV_SEL_MASK,
		cs35l33->pdata.amp_drv_sel << CS35L33_AMP_DRV_SEL_SHIFT);

	if (cs35l33->pdata.boost_ipk)
		FUNC0(component, cs35l33->pdata.boost_ipk);

	if (cs35l33->enable_soft_ramp) {
		FUNC6(component, CS35L33_DAC_CTL,
			CS35L33_DIGSFT, CS35L33_DIGSFT);
		FUNC6(component, CS35L33_DAC_CTL,
			CS35L33_DSR_RATE, cs35l33->pdata.ramp_rate);
	} else {
		FUNC6(component, CS35L33_DAC_CTL,
			CS35L33_DIGSFT, 0);
	}

	/* update IMON scaling rate if different from default of 0x8 */
	if (cs35l33->pdata.imon_adc_scale != 0x8)
		FUNC6(component, CS35L33_ADC_CTL,
			CS35L33_IMON_SCALE, cs35l33->pdata.imon_adc_scale);

	FUNC1(component, &(cs35l33->pdata));

	/*
	 * unmask important interrupts that causes the chip to enter
	 * speaker safe mode and hence deserves user attention
	 */
	FUNC4(cs35l33->regmap, CS35L33_INT_MASK_1,
		CS35L33_M_OTE | CS35L33_M_OTW | CS35L33_M_AMP_SHORT |
		CS35L33_M_CAL_ERR, 0);

	FUNC3(component->dev);

	return 0;
}