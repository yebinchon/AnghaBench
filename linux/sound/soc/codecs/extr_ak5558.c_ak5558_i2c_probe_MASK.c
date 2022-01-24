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
struct ak5558_priv {int /*<<< orphan*/  reset_gpiod; struct i2c_client* i2c; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ak5558_dai ; 
 int /*<<< orphan*/  ak5558_regmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ak5558_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct ak5558_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soc_codec_dev_ak5558 ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c)
{
	struct ak5558_priv *ak5558;
	int ret = 0;

	ak5558 = FUNC3(&i2c->dev, sizeof(*ak5558), GFP_KERNEL);
	if (!ak5558)
		return -ENOMEM;

	ak5558->regmap = FUNC4(i2c, &ak5558_regmap);
	if (FUNC0(ak5558->regmap))
		return FUNC1(ak5558->regmap);

	FUNC6(i2c, ak5558);
	ak5558->i2c = i2c;

	ak5558->reset_gpiod = FUNC2(&i2c->dev, "reset",
						      GPIOD_OUT_LOW);
	if (FUNC0(ak5558->reset_gpiod))
		return FUNC1(ak5558->reset_gpiod);

	ret = FUNC5(&i2c->dev,
				     &soc_codec_dev_ak5558,
				     &ak5558_dai, 1);
	if (ret)
		return ret;

	FUNC7(&i2c->dev);

	return 0;
}