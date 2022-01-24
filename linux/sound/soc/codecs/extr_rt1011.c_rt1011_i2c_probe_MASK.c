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
struct rt1011_priv {int /*<<< orphan*/  cali_work; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT1011_DEVICE_ID ; 
 unsigned int RT1011_DEVICE_ID_NUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct rt1011_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct rt1011_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  rt1011_calibration_work ; 
 int /*<<< orphan*/  rt1011_dai ; 
 int /*<<< orphan*/  rt1011_regmap ; 
 int /*<<< orphan*/  soc_component_dev_rt1011 ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt1011_priv *rt1011;
	int ret;
	unsigned int val;

	rt1011 = FUNC5(&i2c->dev, sizeof(struct rt1011_priv),
				GFP_KERNEL);
	if (rt1011 == NULL)
		return -ENOMEM;

	FUNC8(i2c, rt1011);

	rt1011->regmap = FUNC6(i2c, &rt1011_regmap);
	if (FUNC2(rt1011->regmap)) {
		ret = FUNC3(rt1011->regmap);
		FUNC4(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC9(rt1011->regmap, RT1011_DEVICE_ID, &val);
	if (val != RT1011_DEVICE_ID_NUM) {
		FUNC4(&i2c->dev,
			"Device with ID register %x is not rt1011\n", val);
		return -ENODEV;
	}

	FUNC1(&rt1011->cali_work, rt1011_calibration_work);

	return FUNC7(&i2c->dev,
		&soc_component_dev_rt1011,
		rt1011_dai, FUNC0(rt1011_dai));

}