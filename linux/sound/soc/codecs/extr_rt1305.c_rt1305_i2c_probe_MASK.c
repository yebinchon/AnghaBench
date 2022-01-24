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
struct rt1305_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT1305_DEVICE_ID ; 
 unsigned int RT1305_DEVICE_ID_NUM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct rt1305_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct rt1305_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt1305_priv*) ; 
 int /*<<< orphan*/  rt1305_dai ; 
 int /*<<< orphan*/  rt1305_regmap ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_rt1305 ; 

__attribute__((used)) static int FUNC11(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt1305_priv *rt1305;
	int ret;
	unsigned int val;

	rt1305 = FUNC4(&i2c->dev, sizeof(struct rt1305_priv),
				GFP_KERNEL);
	if (rt1305 == NULL)
		return -ENOMEM;

	FUNC7(i2c, rt1305);

	rt1305->regmap = FUNC5(i2c, &rt1305_regmap);
	if (FUNC1(rt1305->regmap)) {
		ret = FUNC2(rt1305->regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC8(rt1305->regmap, RT1305_DEVICE_ID, &val);
	if (val != RT1305_DEVICE_ID_NUM) {
		FUNC3(&i2c->dev,
			"Device with ID register %x is not rt1305\n", val);
		return -ENODEV;
	}

	FUNC10(rt1305->regmap);
	FUNC9(rt1305);

	return FUNC6(&i2c->dev,
			&soc_component_dev_rt1305,
			rt1305_dai, FUNC0(rt1305_dai));
}