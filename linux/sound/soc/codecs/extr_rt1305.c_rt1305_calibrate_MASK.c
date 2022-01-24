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
typedef  int u64 ;
struct rt1305_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int R0_LOWER ; 
 int R0_UPPER ; 
 scalar_t__ RT1305_ADC_SET_3 ; 
 scalar_t__ RT1305_CAL_EFUSE_CLOCK ; 
 scalar_t__ RT1305_CLK_1 ; 
 scalar_t__ RT1305_CLOCK_DETECT ; 
 scalar_t__ RT1305_DAC_OFFSET_5 ; 
 scalar_t__ RT1305_DAC_OFFSET_6 ; 
 scalar_t__ RT1305_DAC_OFFSET_7 ; 
 scalar_t__ RT1305_DAC_OFFSET_8 ; 
 scalar_t__ RT1305_EFUSE_1 ; 
 scalar_t__ RT1305_POWER_CTRL_1 ; 
 scalar_t__ RT1305_POWER_CTRL_2 ; 
 scalar_t__ RT1305_POWER_CTRL_3 ; 
 scalar_t__ RT1305_POWER_STATUS ; 
 scalar_t__ RT1305_PR_BASE ; 
 scalar_t__ RT1305_SILENCE_DETECT ; 
 scalar_t__ RT1305_SPK_TEMP_PROTECTION_1 ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static void FUNC10(struct rt1305_priv *rt1305)
{
	unsigned int valmsb, vallsb, offsetl, offsetr;
	unsigned int rh, rl, rhl, r0ohm;
	u64 r0l, r0r;

	FUNC5(rt1305->regmap, true);

	FUNC8(rt1305->regmap);
	FUNC7(rt1305->regmap, RT1305_ADC_SET_3, 0x0219);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xcf, 0x5548);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xc1, 0x0320);
	FUNC7(rt1305->regmap, RT1305_CLOCK_DETECT, 0x1000);
	FUNC7(rt1305->regmap, RT1305_CLK_1, 0x0600);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0xffd0);
	FUNC7(rt1305->regmap, RT1305_EFUSE_1, 0x0080);
	FUNC7(rt1305->regmap, RT1305_EFUSE_1, 0x0880);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_1, 0x0dfe);

	/* Sin Gen */
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x5d, 0x0442);

	FUNC7(rt1305->regmap, RT1305_CAL_EFUSE_CLOCK, 0xb000);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xc3, 0xd4a0);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xcc, 0x00cc);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xc1, 0x0320);
	FUNC7(rt1305->regmap, RT1305_POWER_STATUS, 0x0000);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_2, 0xffff);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0xfc20);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x06, 0x00c0);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0xfca0);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0xfce0);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0xfcf0);

	/* EFUSE read */
	FUNC7(rt1305->regmap, RT1305_EFUSE_1, 0x0080);
	FUNC7(rt1305->regmap, RT1305_EFUSE_1, 0x0880);
	FUNC7(rt1305->regmap, RT1305_EFUSE_1, 0x0880);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0xfce0);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0xfca0);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0xfc20);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x06, 0x0000);
	FUNC7(rt1305->regmap, RT1305_EFUSE_1, 0x0000);

	FUNC6(rt1305->regmap, RT1305_DAC_OFFSET_5, &valmsb);
	FUNC6(rt1305->regmap, RT1305_DAC_OFFSET_6, &vallsb);
	offsetl = valmsb << 16 | vallsb;
	FUNC6(rt1305->regmap, RT1305_DAC_OFFSET_7, &valmsb);
	FUNC6(rt1305->regmap, RT1305_DAC_OFFSET_8, &vallsb);
	offsetr = valmsb << 16 | vallsb;
	FUNC4("DC offsetl=0x%x, offsetr=0x%x\n", offsetl, offsetr);

	/* R0 calibration */
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x5d, 0x9542);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0xfcf0);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_2, 0xffff);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_1, 0x1dfe);
	FUNC7(rt1305->regmap, RT1305_SILENCE_DETECT, 0x0e13);
	FUNC7(rt1305->regmap, RT1305_CLK_1, 0x0650);

	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x50, 0x0064);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x51, 0x0770);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x52, 0xc30c);
	FUNC7(rt1305->regmap, RT1305_SPK_TEMP_PROTECTION_1, 0x8200);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xd4, 0xfb00);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xd4, 0xff80);
	FUNC1(2000);
	FUNC6(rt1305->regmap, RT1305_PR_BASE + 0x55, &rh);
	FUNC6(rt1305->regmap, RT1305_PR_BASE + 0x56, &rl);
	rhl = (rh << 16) | rl;
	r0ohm = (rhl*10) / 33554432;

	FUNC2("Left_rhl = 0x%x rh=0x%x rl=0x%x\n", rhl, rh, rl);
	FUNC4("Left channel %d.%dohm\n", (r0ohm/10), (r0ohm%10));

	r0l = 562949953421312ULL;
	if (rhl != 0)
		FUNC0(r0l, rhl);
	FUNC2("Left_r0 = 0x%llx\n", r0l);

	FUNC7(rt1305->regmap, RT1305_SPK_TEMP_PROTECTION_1, 0x9200);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xd4, 0xfb00);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xd4, 0xff80);
	FUNC1(2000);
	FUNC6(rt1305->regmap, RT1305_PR_BASE + 0x55, &rh);
	FUNC6(rt1305->regmap, RT1305_PR_BASE + 0x56, &rl);
	rhl = (rh << 16) | rl;
	r0ohm = (rhl*10) / 33554432;

	FUNC2("Right_rhl = 0x%x rh=0x%x rl=0x%x\n", rhl, rh, rl);
	FUNC4("Right channel %d.%dohm\n", (r0ohm/10), (r0ohm%10));

	r0r = 562949953421312ULL;
	if (rhl != 0)
		FUNC0(r0r, rhl);
	FUNC2("Right_r0 = 0x%llx\n", r0r);

	FUNC7(rt1305->regmap, RT1305_SPK_TEMP_PROTECTION_1, 0xc2ec);

	if ((r0l > R0_UPPER) && (r0l < R0_LOWER) &&
		(r0r > R0_UPPER) && (r0r < R0_LOWER)) {
		FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x4e,
			(r0l >> 16) & 0xffff);
		FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x4f,
			r0l & 0xffff);
		FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xfe,
			((r0r >> 16) & 0xffff) | 0xf800);
		FUNC7(rt1305->regmap, RT1305_PR_BASE + 0xfd,
			r0r & 0xffff);
	} else {
		FUNC3("R0 calibration failed\n");
	}

	/* restore some registers */
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_1, 0x0dfe);
	FUNC9(200000, 400000);
	FUNC7(rt1305->regmap, RT1305_PR_BASE + 0x5d, 0x0442);
	FUNC7(rt1305->regmap, RT1305_CLOCK_DETECT, 0x3000);
	FUNC7(rt1305->regmap, RT1305_CLK_1, 0x0400);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_1, 0x0000);
	FUNC7(rt1305->regmap, RT1305_CAL_EFUSE_CLOCK, 0x8000);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_2, 0x1020);
	FUNC7(rt1305->regmap, RT1305_POWER_CTRL_3, 0x0000);

	FUNC5(rt1305->regmap, false);
}