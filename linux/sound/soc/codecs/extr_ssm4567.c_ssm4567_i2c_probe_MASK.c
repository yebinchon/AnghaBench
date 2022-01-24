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
struct ssm4567 {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSM4567_REG_SOFT_RESET ; 
 struct ssm4567* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct ssm4567*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ssm4567_component_driver ; 
 int /*<<< orphan*/  ssm4567_dai ; 
 int /*<<< orphan*/  ssm4567_regmap_config ; 
 int FUNC7 (struct ssm4567*,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
	const struct i2c_device_id *id)
{
	struct ssm4567 *ssm4567;
	int ret;

	ssm4567 = FUNC2(&i2c->dev, sizeof(*ssm4567), GFP_KERNEL);
	if (ssm4567 == NULL)
		return -ENOMEM;

	FUNC5(i2c, ssm4567);

	ssm4567->regmap = FUNC3(i2c, &ssm4567_regmap_config);
	if (FUNC0(ssm4567->regmap))
		return FUNC1(ssm4567->regmap);

	ret = FUNC6(ssm4567->regmap, SSM4567_REG_SOFT_RESET, 0x00);
	if (ret)
		return ret;

	ret = FUNC7(ssm4567, false);
	if (ret)
		return ret;

	return FUNC4(&i2c->dev, &ssm4567_component_driver,
			&ssm4567_dai, 1);
}