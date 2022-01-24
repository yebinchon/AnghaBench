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
typedef  int u32 ;
struct spdif_out_dev {scalar_t__ io_base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int SPDIF_DIVIDER_MASK ; 
 int SPDIF_DIVIDER_SHIFT ; 
 scalar_t__ SPDIF_OUT_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct spdif_out_dev *host, u32 core_freq,
		u32 rate)
{
	u32 divider, ctrl;

	FUNC2(host->clk, core_freq);
	divider = FUNC0(FUNC1(host->clk), (rate * 128));

	ctrl = FUNC3(host->io_base + SPDIF_OUT_CTRL);
	ctrl &= ~SPDIF_DIVIDER_MASK;
	ctrl |= (divider << SPDIF_DIVIDER_SHIFT) & SPDIF_DIVIDER_MASK;
	FUNC4(ctrl, host->io_base + SPDIF_OUT_CTRL);
}