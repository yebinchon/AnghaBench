#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct max98927_priv {int interleave_mode; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX98927_R01FF_REV_ID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 struct max98927_priv* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct max98927_priv*) ; 
 int /*<<< orphan*/  max98927_dai ; 
 int /*<<< orphan*/  max98927_regmap ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct max98927_priv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  soc_component_dev_max98927 ; 

__attribute__((used)) static int FUNC12(struct i2c_client *i2c,
	const struct i2c_device_id *id)
{

	int ret = 0, value;
	int reg = 0;
	struct max98927_priv *max98927 = NULL;

	max98927 = FUNC5(&i2c->dev,
		sizeof(*max98927), GFP_KERNEL);

	if (!max98927) {
		ret = -ENOMEM;
		return ret;
	}
	FUNC8(i2c, max98927);

	/* update interleave mode info */
	if (!FUNC10(i2c->dev.of_node,
		"interleave_mode", &value)) {
		if (value > 0)
			max98927->interleave_mode = true;
		else
			max98927->interleave_mode = false;
	} else
		max98927->interleave_mode = false;

	/* regmap initialization */
	max98927->regmap
		= FUNC6(i2c, &max98927_regmap);
	if (FUNC1(max98927->regmap)) {
		ret = FUNC2(max98927->regmap);
		FUNC3(&i2c->dev,
			"Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	/* Check Revision ID */
	ret = FUNC11(max98927->regmap,
		MAX98927_R01FF_REV_ID, &reg);
	if (ret < 0) {
		FUNC3(&i2c->dev,
			"Failed to read: 0x%02X\n", MAX98927_R01FF_REV_ID);
		return ret;
	}
	FUNC4(&i2c->dev, "MAX98927 revisionID: 0x%02X\n", reg);

	/* voltage/current slot configuration */
	FUNC9(i2c, max98927);

	/* codec registeration */
	ret = FUNC7(&i2c->dev,
		&soc_component_dev_max98927,
		max98927_dai, FUNC0(max98927_dai));
	if (ret < 0)
		FUNC3(&i2c->dev, "Failed to register component: %d\n", ret);

	return ret;
}