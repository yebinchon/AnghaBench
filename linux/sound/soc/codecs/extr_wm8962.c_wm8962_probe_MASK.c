#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wm8962_priv {TYPE_1__* disable_nb; TYPE_2__* supplies; struct snd_soc_component* component; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  consumer; } ;
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int WM8962_GP2_FN_MASK ; 
 scalar_t__ WM8962_GPIO_BASE ; 
#define  WM8962_GPIO_FN_DMICCLK 129 
#define  WM8962_GPIO_FN_DMICDAT 128 
 int WM8962_MAX_GPIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_soc_component*) ; 
 struct wm8962_priv* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  wm8962_regulator_event_0 ; 
 int /*<<< orphan*/  wm8962_regulator_event_1 ; 
 int /*<<< orphan*/  wm8962_regulator_event_2 ; 
 int /*<<< orphan*/  wm8962_regulator_event_3 ; 
 int /*<<< orphan*/  wm8962_regulator_event_4 ; 
 int /*<<< orphan*/  wm8962_regulator_event_5 ; 
 int /*<<< orphan*/  wm8962_regulator_event_6 ; 
 int /*<<< orphan*/  wm8962_regulator_event_7 ; 

__attribute__((used)) static int FUNC12(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC5(component);
	int ret;
	struct wm8962_priv *wm8962 = FUNC6(component);
	int i;
	bool dmicclk, dmicdat;

	wm8962->component = component;

	wm8962->disable_nb[0].notifier_call = wm8962_regulator_event_0;
	wm8962->disable_nb[1].notifier_call = wm8962_regulator_event_1;
	wm8962->disable_nb[2].notifier_call = wm8962_regulator_event_2;
	wm8962->disable_nb[3].notifier_call = wm8962_regulator_event_3;
	wm8962->disable_nb[4].notifier_call = wm8962_regulator_event_4;
	wm8962->disable_nb[5].notifier_call = wm8962_regulator_event_5;
	wm8962->disable_nb[6].notifier_call = wm8962_regulator_event_6;
	wm8962->disable_nb[7].notifier_call = wm8962_regulator_event_7;

	/* This should really be moved into the regulator core */
	for (i = 0; i < FUNC0(wm8962->supplies); i++) {
		ret = FUNC4(
						wm8962->supplies[i].consumer,
						&wm8962->disable_nb[i]);
		if (ret != 0) {
			FUNC2(component->dev,
				"Failed to register regulator notifier: %d\n",
				ret);
		}
	}

	FUNC9(component);

	/* Save boards having to disable DMIC when not in use */
	dmicclk = false;
	dmicdat = false;
	for (i = 0; i < WM8962_MAX_GPIO; i++) {
		switch (FUNC7(component, WM8962_GPIO_BASE + i)
			& WM8962_GP2_FN_MASK) {
		case WM8962_GPIO_FN_DMICCLK:
			dmicclk = true;
			break;
		case WM8962_GPIO_FN_DMICDAT:
			dmicdat = true;
			break;
		default:
			break;
		}
	}
	if (!dmicclk || !dmicdat) {
		FUNC1(component->dev, "DMIC not in use, disabling\n");
		FUNC8(dapm, "DMICDAT");
	}
	if (dmicclk != dmicdat)
		FUNC3(component->dev, "DMIC GPIOs partially configured\n");

	FUNC10(component);
	FUNC11(component);

	return 0;
}