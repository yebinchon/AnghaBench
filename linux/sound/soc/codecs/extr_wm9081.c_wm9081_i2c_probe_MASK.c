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
struct TYPE_2__ {int /*<<< orphan*/  irq_cmos; scalar_t__ irq_high; } ;
struct wm9081_priv {int /*<<< orphan*/  regmap; TYPE_1__ pdata; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM9081_INTERRUPT_CONTROL ; 
 unsigned int WM9081_IRQ_OP_CTRL ; 
 unsigned int WM9081_IRQ_POL ; 
 int /*<<< orphan*/  WM9081_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct wm9081_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct wm9081_priv*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  soc_component_dev_wm9081 ; 
 int /*<<< orphan*/  wm9081_dai ; 
 int /*<<< orphan*/  wm9081_regmap ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm9081_priv *wm9081;
	unsigned int reg;
	int ret;

	wm9081 = FUNC4(&i2c->dev, sizeof(struct wm9081_priv),
			      GFP_KERNEL);
	if (wm9081 == NULL)
		return -ENOMEM;

	FUNC7(i2c, wm9081);

	wm9081->regmap = FUNC5(i2c, &wm9081_regmap);
	if (FUNC0(wm9081->regmap)) {
		ret = FUNC1(wm9081->regmap);
		FUNC2(&i2c->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	ret = FUNC10(wm9081->regmap, WM9081_SOFTWARE_RESET, &reg);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to read chip ID: %d\n", ret);
		return ret;
	}
	if (reg != 0x9081) {
		FUNC2(&i2c->dev, "Device is not a WM9081: ID=0x%x\n", reg);
		return -EINVAL;
	}

	ret = FUNC12(wm9081->regmap);
	if (ret < 0) {
		FUNC2(&i2c->dev, "Failed to issue reset\n");
		return ret;
	}

	if (FUNC3(&i2c->dev))
		FUNC8(&wm9081->pdata, FUNC3(&i2c->dev),
		       sizeof(wm9081->pdata));

	reg = 0;
	if (wm9081->pdata.irq_high)
		reg |= WM9081_IRQ_POL;
	if (!wm9081->pdata.irq_cmos)
		reg |= WM9081_IRQ_OP_CTRL;
	FUNC11(wm9081->regmap, WM9081_INTERRUPT_CONTROL,
			   WM9081_IRQ_POL | WM9081_IRQ_OP_CTRL, reg);

	FUNC9(wm9081->regmap, true);

	ret = FUNC6(&i2c->dev,
			&soc_component_dev_wm9081, &wm9081_dai, 1);
	if (ret < 0)
		return ret;

	return 0;
}