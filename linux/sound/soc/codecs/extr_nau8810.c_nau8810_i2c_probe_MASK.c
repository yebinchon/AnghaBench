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
struct nau8810 {int /*<<< orphan*/  regmap; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAU8810_REG_RESET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct nau8810* FUNC2 (struct device*) ; 
 struct nau8810* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct nau8810*) ; 
 int /*<<< orphan*/  nau8810_component_driver ; 
 int /*<<< orphan*/  nau8810_dai ; 
 int /*<<< orphan*/  nau8810_regmap_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct nau8810 *nau8810 = FUNC2(dev);

	if (!nau8810) {
		nau8810 = FUNC3(dev, sizeof(*nau8810), GFP_KERNEL);
		if (!nau8810)
			return -ENOMEM;
	}
	FUNC6(i2c, nau8810);

	nau8810->regmap = FUNC4(i2c, &nau8810_regmap_config);
	if (FUNC0(nau8810->regmap))
		return FUNC1(nau8810->regmap);
	nau8810->dev = dev;

	FUNC7(nau8810->regmap, NAU8810_REG_RESET, 0x00);

	return FUNC5(dev,
		&nau8810_component_driver, &nau8810_dai, 1);
}