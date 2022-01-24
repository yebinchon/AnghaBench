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
struct TYPE_2__ {scalar_t__ hp_pol; } ;
struct wm5100_priv {TYPE_1__ pdata; struct snd_soc_component* component; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  WM5100_IRQ_DEBOUNCE_1 ; 
 int /*<<< orphan*/  WM5100_IRQ_DEBOUNCE_2 ; 
 int /*<<< orphan*/  WM5100_OUT_VU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 struct wm5100_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wm5100_dapm_widgets_noirq ; 
 int /*<<< orphan*/ * wm5100_dig_vu ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC3(component);
	struct i2c_client *i2c = FUNC8(component->dev);
	struct wm5100_priv *wm5100 = FUNC4(component);
	int ret, i;

	wm5100->component = component;

	for (i = 0; i < FUNC0(wm5100_dig_vu); i++)
		FUNC5(component, wm5100_dig_vu[i], WM5100_OUT_VU,
				    WM5100_OUT_VU);

	/* Don't debounce interrupts to support use of SYSCLK only */
	FUNC6(component, WM5100_IRQ_DEBOUNCE_1, 0);
	FUNC6(component, WM5100_IRQ_DEBOUNCE_2, 0);

	/* TODO: check if we're symmetric */

	if (i2c->irq)
		FUNC7(dapm, wm5100_dapm_widgets_noirq,
					  FUNC0(wm5100_dapm_widgets_noirq));

	if (wm5100->pdata.hp_pol) {
		ret = FUNC2(wm5100->pdata.hp_pol,
				       GPIOF_OUT_INIT_HIGH, "WM5100 HP_POL");
		if (ret < 0) {
			FUNC1(&i2c->dev, "Failed to request HP_POL %d: %d\n",
				wm5100->pdata.hp_pol, ret);
			goto err_gpio;
		}
	}

	return 0;

err_gpio:

	return ret;
}