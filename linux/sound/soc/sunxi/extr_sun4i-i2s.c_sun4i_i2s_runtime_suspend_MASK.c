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
struct sun4i_i2s {int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  mod_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_I2S_CTRL_GL_EN ; 
 int /*<<< orphan*/  SUN4I_I2S_CTRL_REG ; 
 int /*<<< orphan*/  SUN4I_I2S_CTRL_SDO_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sun4i_i2s* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct sun4i_i2s *i2s = FUNC1(dev);

	FUNC0(i2s->mod_clk);

	/* Disable our output lines */
	FUNC3(i2s->regmap, SUN4I_I2S_CTRL_REG,
			   SUN4I_I2S_CTRL_SDO_EN_MASK, 0);

	/* Disable the whole hardware block */
	FUNC3(i2s->regmap, SUN4I_I2S_CTRL_REG,
			   SUN4I_I2S_CTRL_GL_EN, 0);

	FUNC2(i2s->regmap, true);

	FUNC0(i2s->bus_clk);

	return 0;
}