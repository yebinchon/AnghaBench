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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct adau1373 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU1373_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adau1373_component_driver ; 
 int /*<<< orphan*/  adau1373_dai_driver ; 
 int /*<<< orphan*/  adau1373_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct adau1373*) ; 
 struct adau1373* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	struct adau1373 *adau1373;
	int ret;

	adau1373 = FUNC4(&client->dev, sizeof(*adau1373), GFP_KERNEL);
	if (!adau1373)
		return -ENOMEM;

	adau1373->regmap = FUNC5(client,
		&adau1373_regmap_config);
	if (FUNC1(adau1373->regmap))
		return FUNC2(adau1373->regmap);

	FUNC7(adau1373->regmap, ADAU1373_SOFT_RESET, 0x00);

	FUNC3(&client->dev, adau1373);

	ret = FUNC6(&client->dev,
			&adau1373_component_driver,
			adau1373_dai_driver, FUNC0(adau1373_dai_driver));
	return ret;
}