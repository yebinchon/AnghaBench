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
struct tscs454 {int sysclk_src_id; int /*<<< orphan*/  regmap; int /*<<< orphan*/  sysclk; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FV_RESET_PWR_ON_DEFAULTS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PLL_INPUT_BCLK ; 
 int PLL_INPUT_XTAL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_PAGESEL ; 
 int /*<<< orphan*/  R_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tscs454* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct tscs454*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  soc_component_dev_tscs454 ; 
 int /*<<< orphan*/ * src_names ; 
 int /*<<< orphan*/  tscs454_dais ; 
 int FUNC12 (struct tscs454*,struct i2c_client*) ; 
 int /*<<< orphan*/  tscs454_patch ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
		const struct i2c_device_id *id)
{
	struct tscs454 *tscs454;
	int src;
	int ret;

	tscs454 = FUNC6(&i2c->dev, sizeof(*tscs454), GFP_KERNEL);
	if (!tscs454)
		return -ENOMEM;

	ret = FUNC12(tscs454, i2c);
	if (ret < 0)
		return ret;

	FUNC8(i2c, tscs454);

	for (src = PLL_INPUT_XTAL; src < PLL_INPUT_BCLK; src++) {
		tscs454->sysclk = FUNC5(&i2c->dev, src_names[src]);
		if (!FUNC1(tscs454->sysclk)) {
			break;
		} else if (FUNC2(tscs454->sysclk) != -ENOENT) {
			ret = FUNC2(tscs454->sysclk);
			FUNC4(&i2c->dev, "Failed to get sysclk (%d)\n", ret);
			return ret;
		}
	}
	FUNC3(&i2c->dev, "PLL input is %s\n", src_names[src]);
	tscs454->sysclk_src_id = src;

	ret = FUNC11(tscs454->regmap,
			R_RESET, FV_RESET_PWR_ON_DEFAULTS);
	if (ret < 0) {
		FUNC4(&i2c->dev, "Failed to reset the component (%d)\n", ret);
		return ret;
	}
	FUNC9(tscs454->regmap);

	ret = FUNC10(tscs454->regmap, tscs454_patch,
			FUNC0(tscs454_patch));
	if (ret < 0) {
		FUNC4(&i2c->dev, "Failed to apply patch (%d)\n", ret);
		return ret;
	}
	/* Sync pg sel reg with cache */
	FUNC11(tscs454->regmap, R_PAGESEL, 0x00);

	ret = FUNC7(&i2c->dev, &soc_component_dev_tscs454,
			tscs454_dais, FUNC0(tscs454_dais));
	if (ret) {
		FUNC4(&i2c->dev, "Failed to register component (%d)\n", ret);
		return ret;
	}

	return 0;
}