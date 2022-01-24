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
struct max98371_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX98371_VERSION ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct max98371_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct max98371_priv*) ; 
 int /*<<< orphan*/  max98371_component ; 
 int /*<<< orphan*/  max98371_dai ; 
 int /*<<< orphan*/  max98371_regmap ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
		const struct i2c_device_id *id)
{
	struct max98371_priv *max98371;
	int ret, reg;

	max98371 = FUNC5(&i2c->dev,
			sizeof(*max98371), GFP_KERNEL);
	if (!max98371)
		return -ENOMEM;

	FUNC8(i2c, max98371);
	max98371->regmap = FUNC6(i2c, &max98371_regmap);
	if (FUNC1(max98371->regmap)) {
		ret = FUNC2(max98371->regmap);
		FUNC3(&i2c->dev,
				"Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	ret = FUNC9(max98371->regmap, MAX98371_VERSION, &reg);
	if (ret < 0) {
		FUNC4(&i2c->dev, "device error %d\n", ret);
		return ret;
	}
	FUNC4(&i2c->dev, "device version %x\n", reg);

	ret = FUNC7(&i2c->dev, &max98371_component,
			max98371_dai, FUNC0(max98371_dai));
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to register component: %d\n", ret);
		return ret;
	}
	return ret;
}