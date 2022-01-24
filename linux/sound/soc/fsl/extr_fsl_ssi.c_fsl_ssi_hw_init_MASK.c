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
struct fsl_ssi {int /*<<< orphan*/  dai_fmt; int /*<<< orphan*/  regs; scalar_t__ use_dual_fifo; int /*<<< orphan*/  fifo_watermark; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SSI_SCR ; 
 int /*<<< orphan*/  REG_SSI_SFCSR ; 
 int /*<<< orphan*/  SSI_SCR_TCH_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_ssi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct fsl_ssi*) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_ssi*) ; 
 int /*<<< orphan*/  FUNC7 (struct fsl_ssi*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct fsl_ssi *ssi)
{
	u32 wm = ssi->fifo_watermark;

	/* Initialize regvals */
	FUNC7(ssi);

	/* Set watermarks */
	FUNC9(ssi->regs, REG_SSI_SFCSR,
		     FUNC2(wm) | FUNC0(wm) |
		     FUNC3(wm) | FUNC1(wm));

	/* Enable Dual FIFO mode */
	if (ssi->use_dual_fifo)
		FUNC8(ssi->regs, REG_SSI_SCR,
				   SSI_SCR_TCH_EN, SSI_SCR_TCH_EN);

	/* AC97 should start earlier to communicate with CODECs */
	if (FUNC5(ssi)) {
		FUNC4(ssi, ssi->dai_fmt);
		FUNC6(ssi);
	}

	return 0;
}