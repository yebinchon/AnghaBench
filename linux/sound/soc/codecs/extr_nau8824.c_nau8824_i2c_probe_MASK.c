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
struct nau8824 {int /*<<< orphan*/  regmap; int /*<<< orphan*/  jd_sem; scalar_t__ irq; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {scalar_t__ irq; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAU8824_REG_I2C_DEVICE_ID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct nau8824* FUNC3 (struct device*) ; 
 struct nau8824* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct nau8824*) ; 
 int /*<<< orphan*/  nau8824_component_driver ; 
 int /*<<< orphan*/  nau8824_dai ; 
 int /*<<< orphan*/  FUNC8 (struct nau8824*) ; 
 int /*<<< orphan*/  FUNC9 (struct nau8824*) ; 
 int FUNC10 (struct device*,struct nau8824*) ; 
 int /*<<< orphan*/  nau8824_regmap_config ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nau8824*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *i2c,
	const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct nau8824 *nau8824 = FUNC3(dev);
	int ret, value;

	if (!nau8824) {
		nau8824 = FUNC4(dev, sizeof(*nau8824), GFP_KERNEL);
		if (!nau8824)
			return -ENOMEM;
		ret = FUNC10(dev, nau8824);
		if (ret)
			return ret;
	}
	FUNC7(i2c, nau8824);

	nau8824->regmap = FUNC5(i2c, &nau8824_regmap_config);
	if (FUNC0(nau8824->regmap))
		return FUNC1(nau8824->regmap);
	nau8824->dev = dev;
	nau8824->irq = i2c->irq;
	FUNC14(&nau8824->jd_sem, 1);

	FUNC9(nau8824);

	ret = FUNC13(nau8824->regmap, NAU8824_REG_I2C_DEVICE_ID, &value);
	if (ret < 0) {
		FUNC2(dev, "Failed to read device id from the NAU8824: %d\n",
			ret);
		return ret;
	}
	FUNC11(nau8824->regmap);
	FUNC8(nau8824);

	if (i2c->irq)
		FUNC12(nau8824);

	return FUNC6(dev,
		&nau8824_component_driver, &nau8824_dai, 1);
}