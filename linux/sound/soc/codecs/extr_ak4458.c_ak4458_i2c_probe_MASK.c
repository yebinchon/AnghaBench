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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ak4458_priv {int /*<<< orphan*/ * dev; void* mute_gpiod; void* reset_gpiod; void* regmap; } ;
struct ak4458_drvdata {int /*<<< orphan*/  dai_drv; int /*<<< orphan*/  comp_drv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  ak4458_regmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ak4458_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct ak4458_priv*) ; 
 struct ak4458_drvdata* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c)
{
	struct ak4458_priv *ak4458;
	const struct ak4458_drvdata *drvdata;
	int ret;

	ak4458 = FUNC4(&i2c->dev, sizeof(*ak4458), GFP_KERNEL);
	if (!ak4458)
		return -ENOMEM;

	ak4458->regmap = FUNC5(i2c, &ak4458_regmap);
	if (FUNC0(ak4458->regmap))
		return FUNC1(ak4458->regmap);

	FUNC7(i2c, ak4458);
	ak4458->dev = &i2c->dev;

	drvdata = FUNC8(&i2c->dev);

	ak4458->reset_gpiod = FUNC3(ak4458->dev, "reset",
						      GPIOD_OUT_LOW);
	if (FUNC0(ak4458->reset_gpiod))
		return FUNC1(ak4458->reset_gpiod);

	ak4458->mute_gpiod = FUNC3(ak4458->dev, "mute",
						     GPIOD_OUT_LOW);
	if (FUNC0(ak4458->mute_gpiod))
		return FUNC1(ak4458->mute_gpiod);

	ret = FUNC6(ak4458->dev, drvdata->comp_drv,
					      drvdata->dai_drv, 1);
	if (ret < 0) {
		FUNC2(ak4458->dev, "Failed to register CODEC: %d\n", ret);
		return ret;
	}

	FUNC9(&i2c->dev);

	return 0;
}