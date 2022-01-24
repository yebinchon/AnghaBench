#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rt1308_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int RT1308_DEVICE_ID_NUM ; 
 int /*<<< orphan*/  RT1308_VEN_DEV_ID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct rt1308_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct rt1308_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  rt1308_dai ; 
 int /*<<< orphan*/  FUNC9 (struct rt1308_priv*) ; 
 int /*<<< orphan*/  rt1308_regmap ; 
 int /*<<< orphan*/  soc_component_dev_rt1308 ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt1308_priv *rt1308;
	int ret;
	unsigned int val;

	rt1308 = FUNC4(&i2c->dev, sizeof(struct rt1308_priv),
				GFP_KERNEL);
	if (rt1308 == NULL)
		return -ENOMEM;

	FUNC7(i2c, rt1308);

	rt1308->regmap = FUNC5(i2c, &rt1308_regmap);
	if (FUNC1(rt1308->regmap)) {
		ret = FUNC2(rt1308->regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC8(rt1308->regmap, RT1308_VEN_DEV_ID, &val);
	/* ignore last byte difference */
	if ((val & 0xFFFFFF00) != RT1308_DEVICE_ID_NUM) {
		FUNC3(&i2c->dev,
			"Device with ID register %x is not rt1308\n", val);
		return -ENODEV;
	}

	FUNC9(rt1308);

	return FUNC6(&i2c->dev,
			&soc_component_dev_rt1308,
			rt1308_dai, FUNC0(rt1308_dai));
}