#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wm1250_priv {TYPE_1__* gpios; } ;
struct wm1250_ev1_pdata {int /*<<< orphan*/ * gpios; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {void* flags; int /*<<< orphan*/  label; int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* GPIOF_OUT_INIT_HIGH ; 
 void* GPIOF_OUT_INIT_LOW ; 
 size_t WM1250_EV1_GPIO_CLK_SEL0 ; 
 size_t WM1250_EV1_GPIO_CLK_SEL1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct wm1250_ev1_pdata* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct wm1250_priv*) ; 
 struct wm1250_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * wm1250_gpio_names ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c)
{
	struct wm1250_ev1_pdata *pdata = FUNC2(&i2c->dev);
	struct wm1250_priv *wm1250;
	int i, ret;

	if (!pdata)
		return 0;

	wm1250 = FUNC4(&i2c->dev, sizeof(*wm1250), GFP_KERNEL);
	if (!wm1250) {
		ret = -ENOMEM;
		goto err;
	}

	for (i = 0; i < FUNC0(wm1250->gpios); i++) {
		wm1250->gpios[i].gpio = pdata->gpios[i];
		wm1250->gpios[i].label = wm1250_gpio_names[i];
		wm1250->gpios[i].flags = GPIOF_OUT_INIT_LOW;
	}
	wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL0].flags = GPIOF_OUT_INIT_HIGH;
	wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL1].flags = GPIOF_OUT_INIT_HIGH;

	ret = FUNC5(wm1250->gpios, FUNC0(wm1250->gpios));
	if (ret != 0) {
		FUNC1(&i2c->dev, "Failed to get GPIOs: %d\n", ret);
		goto err;
	}

	FUNC3(&i2c->dev, wm1250);

	return ret;

err:
	return ret;
}