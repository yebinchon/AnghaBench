#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct uda1380_priv {struct i2c_client* i2c; int /*<<< orphan*/  reg_cache; } ;
struct uda1380_platform_data {int /*<<< orphan*/  gpio_power; int /*<<< orphan*/  gpio_reset; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {struct uda1380_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct uda1380_priv* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct uda1380_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_uda1380 ; 
 int /*<<< orphan*/  uda1380_dai ; 
 int /*<<< orphan*/  uda1380_reg ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	struct uda1380_platform_data *pdata = i2c->dev.platform_data;
	struct uda1380_priv *uda1380;
	int ret;

	if (!pdata)
		return -EINVAL;

	uda1380 = FUNC3(&i2c->dev, sizeof(struct uda1380_priv),
			       GFP_KERNEL);
	if (uda1380 == NULL)
		return -ENOMEM;

	if (FUNC5(pdata->gpio_reset)) {
		ret = FUNC1(&i2c->dev, pdata->gpio_reset,
			GPIOF_OUT_INIT_LOW, "uda1380 reset");
		if (ret)
			return ret;
	}

	if (FUNC5(pdata->gpio_power)) {
		ret = FUNC1(&i2c->dev, pdata->gpio_power,
			GPIOF_OUT_INIT_LOW, "uda1380 power");
		if (ret)
			return ret;
	}

	uda1380->reg_cache = FUNC2(&i2c->dev,
					uda1380_reg,
					FUNC0(uda1380_reg) * sizeof(u16),
					GFP_KERNEL);
	if (!uda1380->reg_cache)
		return -ENOMEM;

	FUNC6(i2c, uda1380);
	uda1380->i2c = i2c;

	ret = FUNC4(&i2c->dev,
			&soc_component_dev_uda1380, uda1380_dai, FUNC0(uda1380_dai));
	return ret;
}