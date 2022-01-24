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
struct tscs42xx {int sysclk_src_id; int /*<<< orphan*/  pll_lock; int /*<<< orphan*/  coeff_ram_lock; int /*<<< orphan*/  audio_params_lock; int /*<<< orphan*/  regmap; int /*<<< orphan*/  sysclk; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RV_RESET_ENABLE ; 
 int /*<<< orphan*/  R_RESET ; 
 int TSCS42XX_PLL_SRC_CNT ; 
 int TSCS42XX_PLL_SRC_XTAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tscs42xx* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct tscs42xx*) ; 
 int /*<<< orphan*/  FUNC9 (struct tscs42xx*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct tscs42xx*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_codec_dev_tscs42xx ; 
 int /*<<< orphan*/ * src_names ; 
 int /*<<< orphan*/  tscs42xx_dai ; 
 int /*<<< orphan*/  tscs42xx_patch ; 
 int /*<<< orphan*/  tscs42xx_regmap ; 

__attribute__((used)) static int FUNC14(struct i2c_client *i2c,
		const struct i2c_device_id *id)
{
	struct tscs42xx *tscs42xx;
	int src;
	int ret;

	tscs42xx = FUNC5(&i2c->dev, sizeof(*tscs42xx), GFP_KERNEL);
	if (!tscs42xx) {
		ret = -ENOMEM;
		FUNC3(&i2c->dev,
			"Failed to allocate memory for data (%d)\n", ret);
		return ret;
	}
	FUNC8(i2c, tscs42xx);

	for (src = TSCS42XX_PLL_SRC_XTAL; src < TSCS42XX_PLL_SRC_CNT; src++) {
		tscs42xx->sysclk = FUNC4(&i2c->dev, src_names[src]);
		if (!FUNC1(tscs42xx->sysclk)) {
			break;
		} else if (FUNC2(tscs42xx->sysclk) != -ENOENT) {
			ret = FUNC2(tscs42xx->sysclk);
			FUNC3(&i2c->dev, "Failed to get sysclk (%d)\n", ret);
			return ret;
		}
	}
	if (src == TSCS42XX_PLL_SRC_CNT) {
		ret = -EINVAL;
		FUNC3(&i2c->dev, "Failed to get a valid clock name (%d)\n",
				ret);
		return ret;
	}
	tscs42xx->sysclk_src_id = src;

	tscs42xx->regmap = FUNC6(i2c, &tscs42xx_regmap);
	if (FUNC1(tscs42xx->regmap)) {
		ret = FUNC2(tscs42xx->regmap);
		FUNC3(&i2c->dev, "Failed to allocate regmap (%d)\n", ret);
		return ret;
	}

	FUNC9(tscs42xx);

	ret = FUNC11(tscs42xx);
	if (ret <= 0) {
		FUNC3(&i2c->dev, "No valid part (%d)\n", ret);
		ret = -ENODEV;
		return ret;
	}

	ret = FUNC13(tscs42xx->regmap, R_RESET, RV_RESET_ENABLE);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to reset device (%d)\n", ret);
		return ret;
	}

	ret = FUNC12(tscs42xx->regmap, tscs42xx_patch,
			FUNC0(tscs42xx_patch));
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to apply patch (%d)\n", ret);
		return ret;
	}

	FUNC10(&tscs42xx->audio_params_lock);
	FUNC10(&tscs42xx->coeff_ram_lock);
	FUNC10(&tscs42xx->pll_lock);

	ret = FUNC7(&i2c->dev,
			&soc_codec_dev_tscs42xx, &tscs42xx_dai, 1);
	if (ret) {
		FUNC3(&i2c->dev, "Failed to register codec (%d)\n", ret);
		return ret;
	}

	return 0;
}