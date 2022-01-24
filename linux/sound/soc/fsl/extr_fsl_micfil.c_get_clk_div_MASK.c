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
typedef  int /*<<< orphan*/  u32 ;
struct fsl_micfil {int /*<<< orphan*/  mclk; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_MICFIL_CTRL2 ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fsl_micfil*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct fsl_micfil *micfil,
			      unsigned int rate)
{
	u32 ctrl2_reg;
	long mclk_rate;
	int clk_div;

	FUNC2(micfil->regmap, REG_MICFIL_CTRL2, &ctrl2_reg);

	mclk_rate = FUNC0(micfil->mclk);

	clk_div = mclk_rate / (FUNC1(micfil, rate) * 2);

	return clk_div;
}