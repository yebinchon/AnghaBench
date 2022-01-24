#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wm8993_priv {TYPE_1__* supplies; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * dev; int /*<<< orphan*/  fll_lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM8993_GPIO1 ; 
 int WM8993_GPIO1_PD ; 
 int WM8993_GPIO1_SEL_MASK ; 
 int /*<<< orphan*/  WM8993_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct wm8993_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct wm8993_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct wm8993_priv*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int,TYPE_1__*) ; 
 int FUNC18 (int,TYPE_1__*) ; 
 int FUNC19 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct wm8993_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_wm8993 ; 
 int /*<<< orphan*/  wm8993_dai ; 
 int /*<<< orphan*/  wm8993_irq ; 
 int /*<<< orphan*/  wm8993_regmap ; 
 TYPE_1__* wm8993_regmap_patch ; 
 int /*<<< orphan*/ * wm8993_supply_names ; 

__attribute__((used)) static int FUNC20(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8993_priv *wm8993;
	unsigned int reg;
	int ret, i;

	wm8993 = FUNC5(&i2c->dev, sizeof(struct wm8993_priv),
			      GFP_KERNEL);
	if (wm8993 == NULL)
		return -ENOMEM;

	wm8993->dev = &i2c->dev;
	FUNC11(&wm8993->fll_lock);

	wm8993->regmap = FUNC6(i2c, &wm8993_regmap);
	if (FUNC1(wm8993->regmap)) {
		ret = FUNC2(wm8993->regmap);
		FUNC3(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	FUNC10(i2c, wm8993);

	for (i = 0; i < FUNC0(wm8993->supplies); i++)
		wm8993->supplies[i].supply = wm8993_supply_names[i];

	ret = FUNC7(&i2c->dev, FUNC0(wm8993->supplies),
				 wm8993->supplies);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC18(FUNC0(wm8993->supplies),
				    wm8993->supplies);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC13(wm8993->regmap, WM8993_SOFTWARE_RESET, &reg);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to read chip ID: %d\n", ret);
		goto err_enable;
	}

	if (reg != 0x8993) {
		FUNC3(&i2c->dev, "Invalid ID register value %x\n", reg);
		ret = -EINVAL;
		goto err_enable;
	}

	ret = FUNC16(wm8993->regmap, WM8993_SOFTWARE_RESET, 0xffff);
	if (ret != 0)
		goto err_enable;

	ret = FUNC14(wm8993->regmap, wm8993_regmap_patch,
				    FUNC0(wm8993_regmap_patch));
	if (ret != 0)
		FUNC4(wm8993->dev, "Failed to apply regmap patch: %d\n",
			 ret);

	if (i2c->irq) {
		/* Put GPIO1 into interrupt mode (only GPIO1 can output IRQ) */
		ret = FUNC15(wm8993->regmap, WM8993_GPIO1,
					 WM8993_GPIO1_PD |
					 WM8993_GPIO1_SEL_MASK, 7);
		if (ret != 0)
			goto err_enable;

		ret = FUNC19(i2c->irq, NULL, wm8993_irq,
					   IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					   "wm8993", wm8993);
		if (ret != 0)
			goto err_enable;

	}

	FUNC17(FUNC0(wm8993->supplies), wm8993->supplies);

	FUNC12(wm8993->regmap, true);

	ret = FUNC8(&i2c->dev,
			&soc_component_dev_wm8993, &wm8993_dai, 1);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to register CODEC: %d\n", ret);
		goto err_irq;
	}

	return 0;

err_irq:
	if (i2c->irq)
		FUNC9(i2c->irq, wm8993);
err_enable:
	FUNC17(FUNC0(wm8993->supplies), wm8993->supplies);
	return ret;
}