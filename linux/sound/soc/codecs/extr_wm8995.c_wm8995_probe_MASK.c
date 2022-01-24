#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wm8995_priv {TYPE_1__* supplies; TYPE_3__* disable_nb; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_6__ {int /*<<< orphan*/  consumer; int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  WM8995_AIF1ADC1_VU ; 
 int /*<<< orphan*/  WM8995_AIF1ADC1_VU_MASK ; 
 int /*<<< orphan*/  WM8995_AIF1ADC2_VU ; 
 int /*<<< orphan*/  WM8995_AIF1ADC2_VU_MASK ; 
 int /*<<< orphan*/  WM8995_AIF1DAC1_VU ; 
 int /*<<< orphan*/  WM8995_AIF1DAC1_VU_MASK ; 
 int /*<<< orphan*/  WM8995_AIF1DAC2_VU ; 
 int /*<<< orphan*/  WM8995_AIF1DAC2_VU_MASK ; 
 int /*<<< orphan*/  WM8995_AIF1_ADC1_RIGHT_VOLUME ; 
 int /*<<< orphan*/  WM8995_AIF1_ADC2_RIGHT_VOLUME ; 
 int /*<<< orphan*/  WM8995_AIF1_DAC1_RIGHT_VOLUME ; 
 int /*<<< orphan*/  WM8995_AIF1_DAC2_RIGHT_VOLUME ; 
 int /*<<< orphan*/  WM8995_AIF2ADC_VU_MASK ; 
 int /*<<< orphan*/  WM8995_AIF2DAC_VU ; 
 int /*<<< orphan*/  WM8995_AIF2DAC_VU_MASK ; 
 int /*<<< orphan*/  WM8995_AIF2_ADC_RIGHT_VOLUME ; 
 int /*<<< orphan*/  WM8995_AIF2_DAC_RIGHT_VOLUME ; 
 int /*<<< orphan*/  WM8995_DAC1_RIGHT_VOLUME ; 
 int /*<<< orphan*/  WM8995_DAC1_VU ; 
 int /*<<< orphan*/  WM8995_DAC1_VU_MASK ; 
 int /*<<< orphan*/  WM8995_DAC2_RIGHT_VOLUME ; 
 int /*<<< orphan*/  WM8995_DAC2_VU ; 
 int /*<<< orphan*/  WM8995_DAC2_VU_MASK ; 
 int /*<<< orphan*/  WM8995_IN1_VU ; 
 int /*<<< orphan*/  WM8995_IN1_VU_MASK ; 
 int /*<<< orphan*/  WM8995_RIGHT_LINE_INPUT_1_VOLUME ; 
 int /*<<< orphan*/  WM8995_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*) ; 
 int FUNC5 (int,TYPE_1__*) ; 
 struct wm8995_priv* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8995_regulator_event_0 ; 
 int /*<<< orphan*/  wm8995_regulator_event_1 ; 
 int /*<<< orphan*/  wm8995_regulator_event_2 ; 
 int /*<<< orphan*/  wm8995_regulator_event_3 ; 
 int /*<<< orphan*/  wm8995_regulator_event_4 ; 
 int /*<<< orphan*/  wm8995_regulator_event_5 ; 
 int /*<<< orphan*/  wm8995_regulator_event_6 ; 
 int /*<<< orphan*/  wm8995_regulator_event_7 ; 
 int /*<<< orphan*/ * wm8995_supply_names ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component)
{
	struct wm8995_priv *wm8995;
	int i;
	int ret;

	wm8995 = FUNC6(component);
	wm8995->component = component;

	for (i = 0; i < FUNC0(wm8995->supplies); i++)
		wm8995->supplies[i].supply = wm8995_supply_names[i];

	ret = FUNC2(component->dev,
				      FUNC0(wm8995->supplies),
				      wm8995->supplies);
	if (ret) {
		FUNC1(component->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	wm8995->disable_nb[0].notifier_call = wm8995_regulator_event_0;
	wm8995->disable_nb[1].notifier_call = wm8995_regulator_event_1;
	wm8995->disable_nb[2].notifier_call = wm8995_regulator_event_2;
	wm8995->disable_nb[3].notifier_call = wm8995_regulator_event_3;
	wm8995->disable_nb[4].notifier_call = wm8995_regulator_event_4;
	wm8995->disable_nb[5].notifier_call = wm8995_regulator_event_5;
	wm8995->disable_nb[6].notifier_call = wm8995_regulator_event_6;
	wm8995->disable_nb[7].notifier_call = wm8995_regulator_event_7;

	/* This should really be moved into the regulator core */
	for (i = 0; i < FUNC0(wm8995->supplies); i++) {
		ret = FUNC3(
						wm8995->supplies[i].consumer,
						&wm8995->disable_nb[i]);
		if (ret) {
			FUNC1(component->dev,
				"Failed to register regulator notifier: %d\n",
				ret);
		}
	}

	ret = FUNC5(FUNC0(wm8995->supplies),
				    wm8995->supplies);
	if (ret) {
		FUNC1(component->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC7(component, WM8995_SOFTWARE_RESET);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to read device ID: %d\n", ret);
		goto err_reg_enable;
	}

	if (ret != 0x8995) {
		FUNC1(component->dev, "Invalid device ID: %#x\n", ret);
		ret = -EINVAL;
		goto err_reg_enable;
	}

	ret = FUNC9(component, WM8995_SOFTWARE_RESET, 0);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to issue reset: %d\n", ret);
		goto err_reg_enable;
	}

	/* Latch volume updates (right only; we always do left then right). */
	FUNC8(component, WM8995_AIF1_DAC1_RIGHT_VOLUME,
			    WM8995_AIF1DAC1_VU_MASK, WM8995_AIF1DAC1_VU);
	FUNC8(component, WM8995_AIF1_DAC2_RIGHT_VOLUME,
			    WM8995_AIF1DAC2_VU_MASK, WM8995_AIF1DAC2_VU);
	FUNC8(component, WM8995_AIF2_DAC_RIGHT_VOLUME,
			    WM8995_AIF2DAC_VU_MASK, WM8995_AIF2DAC_VU);
	FUNC8(component, WM8995_AIF1_ADC1_RIGHT_VOLUME,
			    WM8995_AIF1ADC1_VU_MASK, WM8995_AIF1ADC1_VU);
	FUNC8(component, WM8995_AIF1_ADC2_RIGHT_VOLUME,
			    WM8995_AIF1ADC2_VU_MASK, WM8995_AIF1ADC2_VU);
	FUNC8(component, WM8995_AIF2_ADC_RIGHT_VOLUME,
			    WM8995_AIF2ADC_VU_MASK, WM8995_AIF1ADC2_VU);
	FUNC8(component, WM8995_DAC1_RIGHT_VOLUME,
			    WM8995_DAC1_VU_MASK, WM8995_DAC1_VU);
	FUNC8(component, WM8995_DAC2_RIGHT_VOLUME,
			    WM8995_DAC2_VU_MASK, WM8995_DAC2_VU);
	FUNC8(component, WM8995_RIGHT_LINE_INPUT_1_VOLUME,
			    WM8995_IN1_VU_MASK, WM8995_IN1_VU);

	FUNC10(component);

	return 0;

err_reg_enable:
	FUNC4(FUNC0(wm8995->supplies), wm8995->supplies);
	return ret;
}