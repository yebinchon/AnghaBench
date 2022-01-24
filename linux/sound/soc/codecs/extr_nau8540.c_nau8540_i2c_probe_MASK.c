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
struct nau8540 {int /*<<< orphan*/  regmap; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAU8540_REG_I2C_DEVICE_ID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct nau8540* FUNC3 (struct device*) ; 
 struct nau8540* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct nau8540*) ; 
 int /*<<< orphan*/  nau8540_component_driver ; 
 int /*<<< orphan*/  nau8540_dai ; 
 int /*<<< orphan*/  FUNC8 (struct nau8540*) ; 
 int /*<<< orphan*/  nau8540_regmap_config ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *i2c,
	const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct nau8540 *nau8540 = FUNC3(dev);
	int ret, value;

	if (!nau8540) {
		nau8540 = FUNC4(dev, sizeof(*nau8540), GFP_KERNEL);
		if (!nau8540)
			return -ENOMEM;
	}
	FUNC7(i2c, nau8540);

	nau8540->regmap = FUNC5(i2c, &nau8540_regmap_config);
	if (FUNC0(nau8540->regmap))
		return FUNC1(nau8540->regmap);
	ret = FUNC10(nau8540->regmap, NAU8540_REG_I2C_DEVICE_ID, &value);
	if (ret < 0) {
		FUNC2(dev, "Failed to read device id from the NAU85L40: %d\n",
			ret);
		return ret;
	}

	nau8540->dev = dev;
	FUNC9(nau8540->regmap);
	FUNC8(nau8540);

	return FUNC6(dev,
		&nau8540_component_driver, &nau8540_dai, 1);
}