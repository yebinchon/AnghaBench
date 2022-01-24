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
struct rt5514_priv {int /*<<< orphan*/  i2c_regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct rt5514_priv *rt5514)
{
	/* Reset */
	FUNC0(rt5514->i2c_regmap, 0x18002000, 0x000010ec);
	/* LDO_I_limit */
	FUNC0(rt5514->i2c_regmap, 0x18002200, 0x00028604);
	/* I2C bypass enable */
	FUNC0(rt5514->i2c_regmap, 0xfafafafa, 0x00000001);
	/* mini-core reset */
	FUNC0(rt5514->i2c_regmap, 0x18002f00, 0x0005514b);
	FUNC0(rt5514->i2c_regmap, 0x18002f00, 0x00055149);
	/* I2C bypass disable */
	FUNC0(rt5514->i2c_regmap, 0xfafafafa, 0x00000000);
	/* PIN config */
	FUNC0(rt5514->i2c_regmap, 0x18002070, 0x00000040);
	/* PLL3(QN)=RCOSC*(10+2) */
	FUNC0(rt5514->i2c_regmap, 0x18002240, 0x0000000a);
	/* PLL3 source=RCOSC, fsi=rt_clk */
	FUNC0(rt5514->i2c_regmap, 0x18002100, 0x0000000b);
	/* Power on RCOSC, pll3 */
	FUNC0(rt5514->i2c_regmap, 0x18002004, 0x00808b81);
	/* DSP clk source = pll3, ENABLE DSP clk */
	FUNC0(rt5514->i2c_regmap, 0x18002f08, 0x00000005);
	/* Enable DSP clk auto switch */
	FUNC0(rt5514->i2c_regmap, 0x18001114, 0x00000001);
	/* Reduce DSP power */
	FUNC0(rt5514->i2c_regmap, 0x18001118, 0x00000001);
}