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
struct sta350_priv {void* regmap; TYPE_1__* supplies; void* gpiod_power_down; void* gpiod_nreset; int /*<<< orphan*/  pdata; int /*<<< orphan*/  coeff_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct sta350_priv* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device*,int,TYPE_1__*) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct sta350_priv*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sta350_component ; 
 int /*<<< orphan*/  sta350_dai ; 
 int FUNC12 (struct device*,struct sta350_priv*) ; 
 int /*<<< orphan*/  sta350_regmap ; 
 int /*<<< orphan*/ * sta350_supply_names ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct sta350_priv *sta350;
	int ret, i;

	sta350 = FUNC6(dev, sizeof(struct sta350_priv), GFP_KERNEL);
	if (!sta350)
		return -ENOMEM;

	FUNC11(&sta350->coeff_lock);
	sta350->pdata = FUNC4(dev);

#ifdef CONFIG_OF
	if (dev->of_node) {
		ret = sta350_probe_dt(dev, sta350);
		if (ret < 0)
			return ret;
	}
#endif

	/* GPIOs */
	sta350->gpiod_nreset = FUNC5(dev, "reset",
						       GPIOD_OUT_LOW);
	if (FUNC1(sta350->gpiod_nreset))
		return FUNC2(sta350->gpiod_nreset);

	sta350->gpiod_power_down = FUNC5(dev, "power-down",
							   GPIOD_OUT_LOW);
	if (FUNC1(sta350->gpiod_power_down))
		return FUNC2(sta350->gpiod_power_down);

	/* regulators */
	for (i = 0; i < FUNC0(sta350->supplies); i++)
		sta350->supplies[i].supply = sta350_supply_names[i];

	ret = FUNC8(dev, FUNC0(sta350->supplies),
				      sta350->supplies);
	if (ret < 0) {
		FUNC3(dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	sta350->regmap = FUNC7(i2c, &sta350_regmap);
	if (FUNC1(sta350->regmap)) {
		ret = FUNC2(sta350->regmap);
		FUNC3(dev, "Failed to init regmap: %d\n", ret);
		return ret;
	}

	FUNC10(i2c, sta350);

	ret = FUNC9(dev, &sta350_component, &sta350_dai, 1);
	if (ret < 0)
		FUNC3(dev, "Failed to register component (%d)\n", ret);

	return ret;
}