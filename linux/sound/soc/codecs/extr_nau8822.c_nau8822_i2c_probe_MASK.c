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
struct nau8822 {int /*<<< orphan*/  regmap; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAU8822_REG_RESET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct nau8822* FUNC3 (struct device*) ; 
 struct nau8822* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct nau8822*) ; 
 int /*<<< orphan*/  nau8822_dai ; 
 int /*<<< orphan*/  nau8822_regmap_config ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  soc_component_dev_nau8822 ; 

__attribute__((used)) static int FUNC9(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct nau8822 *nau8822 = FUNC3(dev);
	int ret;

	if (!nau8822) {
		nau8822 = FUNC4(dev, sizeof(*nau8822), GFP_KERNEL);
		if (nau8822 == NULL)
			return -ENOMEM;
	}
	FUNC7(i2c, nau8822);

	nau8822->regmap = FUNC5(i2c, &nau8822_regmap_config);
	if (FUNC0(nau8822->regmap)) {
		ret = FUNC1(nau8822->regmap);
		FUNC2(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
		return ret;
	}
	nau8822->dev = dev;

	/* Reset the codec */
	ret = FUNC8(nau8822->regmap, NAU8822_REG_RESET, 0x00);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to issue reset: %d\n", ret);
		return ret;
	}

	ret = FUNC6(dev, &soc_component_dev_nau8822,
						&nau8822_dai, 1);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to register CODEC: %d\n", ret);
		return ret;
	}

	return 0;
}