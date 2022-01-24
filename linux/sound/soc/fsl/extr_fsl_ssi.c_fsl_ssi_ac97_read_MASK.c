#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_ac97 {int dummy; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ac97_reg_lock; int /*<<< orphan*/  clk; struct regmap* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SSI_SACADD ; 
 int /*<<< orphan*/  REG_SSI_SACDAT ; 
 int /*<<< orphan*/  REG_SSI_SACNT ; 
 int /*<<< orphan*/  SSI_SACNT_RD ; 
 int /*<<< orphan*/  SSI_SACNT_RDWR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* fsl_ac97_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static unsigned short FUNC9(struct snd_ac97 *ac97,
					unsigned short reg)
{
	struct regmap *regs = fsl_ac97_data->regs;
	unsigned short val = 0;
	u32 reg_val;
	unsigned int lreg;
	int ret;

	FUNC2(&fsl_ac97_data->ac97_reg_lock);

	ret = FUNC1(fsl_ac97_data->clk);
	if (ret) {
		FUNC4("ac97 read clk_prepare_enable failed: %d\n", ret);
		goto ret_unlock;
	}

	lreg = (reg & 0x7f) <<  12;
	FUNC7(regs, REG_SSI_SACADD, lreg);
	FUNC6(regs, REG_SSI_SACNT,
			   SSI_SACNT_RDWR_MASK, SSI_SACNT_RD);

	FUNC8(100);

	FUNC5(regs, REG_SSI_SACDAT, &reg_val);
	val = (reg_val >> 4) & 0xffff;

	FUNC0(fsl_ac97_data->clk);

ret_unlock:
	FUNC3(&fsl_ac97_data->ac97_reg_lock);
	return val;
}