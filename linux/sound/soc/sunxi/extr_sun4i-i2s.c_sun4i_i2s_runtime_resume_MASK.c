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
struct sun4i_i2s {int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  mod_clk; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_I2S_CTRL_GL_EN ; 
 int /*<<< orphan*/  SUN4I_I2S_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_I2S_CTRL_SDO_EN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct sun4i_i2s* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct sun4i_i2s *i2s = FUNC4(dev);
	int ret;

	ret = FUNC2(i2s->bus_clk);
	if (ret) {
		FUNC3(dev, "Failed to enable bus clock\n");
		return ret;
	}

	FUNC5(i2s->regmap, false);
	FUNC6(i2s->regmap);

	ret = FUNC7(i2s->regmap);
	if (ret) {
		FUNC3(dev, "Failed to sync regmap cache\n");
		goto err_disable_clk;
	}

	/* Enable the whole hardware block */
	FUNC8(i2s->regmap, SUN4I_I2S_CTRL_REG,
			   SUN4I_I2S_CTRL_GL_EN, SUN4I_I2S_CTRL_GL_EN);

	/* Enable the first output line */
	FUNC8(i2s->regmap, SUN4I_I2S_CTRL_REG,
			   SUN4I_I2S_CTRL_SDO_EN_MASK,
			   FUNC0(0));

	ret = FUNC2(i2s->mod_clk);
	if (ret) {
		FUNC3(dev, "Failed to enable module clock\n");
		goto err_disable_clk;
	}

	return 0;

err_disable_clk:
	FUNC1(i2s->bus_clk);
	return ret;
}