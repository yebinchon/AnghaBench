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
struct atiixp {int dummy; } ;

/* Variables and functions */
 unsigned int ATI_REG_CMD_BURST_EN ; 
 int ATI_REG_CMD_SPDF_THRESHOLD_SHIFT ; 
 int ATI_REG_IER_IN_XRUN_EN ; 
 int ATI_REG_IER_IO_STATUS_EN ; 
 int ATI_REG_IER_OUT_XRUN_EN ; 
 int ATI_REG_IER_SPDF_STATUS_EN ; 
 int ATI_REG_IER_SPDF_XRUN_EN ; 
 unsigned int ATI_REG_SPDF_CMD_LFSR ; 
 unsigned int ATI_REG_SPDF_CMD_SINGLE_CH ; 
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  ISR ; 
 int /*<<< orphan*/  SPDF_CMD ; 
 unsigned int FUNC0 (struct atiixp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct atiixp *chip)
{
	unsigned int reg;

	/* set up spdif, enable burst mode */
	reg = FUNC0(chip, CMD);
	reg |= 0x02 << ATI_REG_CMD_SPDF_THRESHOLD_SHIFT;
	reg |= ATI_REG_CMD_BURST_EN;
	FUNC1(chip, CMD, reg);

	reg = FUNC0(chip, SPDF_CMD);
	reg &= ~(ATI_REG_SPDF_CMD_LFSR|ATI_REG_SPDF_CMD_SINGLE_CH);
	FUNC1(chip, SPDF_CMD, reg);

	/* clear all interrupt source */
	FUNC1(chip, ISR, 0xffffffff);
	/* enable irqs */
	FUNC1(chip, IER,
		     ATI_REG_IER_IO_STATUS_EN |
		     ATI_REG_IER_IN_XRUN_EN |
		     ATI_REG_IER_OUT_XRUN_EN |
		     ATI_REG_IER_SPDF_XRUN_EN |
		     ATI_REG_IER_SPDF_STATUS_EN);
	return 0;
}