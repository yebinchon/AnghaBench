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
struct sta32x_priv {int /*<<< orphan*/ * regmap; TYPE_1__* supplies; int /*<<< orphan*/ * gpiod_nreset; int /*<<< orphan*/ * xti_clk; int /*<<< orphan*/  pdata; int /*<<< orphan*/  coeff_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct sta32x_priv* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device*,int,TYPE_1__*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct sta32x_priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sta32x_component ; 
 int /*<<< orphan*/  sta32x_dai ; 
 int FUNC13 (struct device*,struct sta32x_priv*) ; 
 int /*<<< orphan*/  sta32x_regmap ; 
 int /*<<< orphan*/ * sta32x_supply_names ; 

__attribute__((used)) static int FUNC14(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct sta32x_priv *sta32x;
	int ret, i;

	sta32x = FUNC7(&i2c->dev, sizeof(struct sta32x_priv),
			      GFP_KERNEL);
	if (!sta32x)
		return -ENOMEM;

	FUNC12(&sta32x->coeff_lock);
	sta32x->pdata = FUNC4(dev);

#ifdef CONFIG_OF
	if (dev->of_node) {
		ret = sta32x_probe_dt(dev, sta32x);
		if (ret < 0)
			return ret;
	}
#endif

	/* Clock */
	sta32x->xti_clk = FUNC5(dev, "xti");
	if (FUNC1(sta32x->xti_clk)) {
		ret = FUNC2(sta32x->xti_clk);

		if (ret == -EPROBE_DEFER)
			return ret;

		sta32x->xti_clk = NULL;
	}

	/* GPIOs */
	sta32x->gpiod_nreset = FUNC6(dev, "reset",
						       GPIOD_OUT_LOW);
	if (FUNC1(sta32x->gpiod_nreset))
		return FUNC2(sta32x->gpiod_nreset);

	/* regulators */
	for (i = 0; i < FUNC0(sta32x->supplies); i++)
		sta32x->supplies[i].supply = sta32x_supply_names[i];

	ret = FUNC9(&i2c->dev, FUNC0(sta32x->supplies),
				      sta32x->supplies);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	sta32x->regmap = FUNC8(i2c, &sta32x_regmap);
	if (FUNC1(sta32x->regmap)) {
		ret = FUNC2(sta32x->regmap);
		FUNC3(dev, "Failed to init regmap: %d\n", ret);
		return ret;
	}

	FUNC11(i2c, sta32x);

	ret = FUNC10(dev, &sta32x_component,
					      &sta32x_dai, 1);
	if (ret < 0)
		FUNC3(dev, "Failed to register component (%d)\n", ret);

	return ret;
}