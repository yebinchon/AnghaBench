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
typedef  scalar_t__ u8 ;
struct omap_mcbsp {int /*<<< orphan*/  dev; int /*<<< orphan*/  fclk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 scalar_t__ MCBSP_CLKS_PAD_SRC ; 
 scalar_t__ MCBSP_CLKS_PRCM_SRC ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct omap_mcbsp *mcbsp, u8 fck_src_id)
{
	struct clk *fck_src;
	const char *src;
	int r;

	if (fck_src_id == MCBSP_CLKS_PAD_SRC)
		src = "pad_fck";
	else if (fck_src_id == MCBSP_CLKS_PRCM_SRC)
		src = "prcm_fck";
	else
		return -EINVAL;

	fck_src = FUNC1(mcbsp->dev, src);
	if (FUNC0(fck_src)) {
		FUNC4(mcbsp->dev, "CLKS: could not clk_get() %s\n", src);
		return -EINVAL;
	}

	FUNC6(mcbsp->dev);

	r = FUNC3(mcbsp->fclk, fck_src);
	if (r) {
		FUNC4(mcbsp->dev, "CLKS: could not clk_set_parent() to %s\n",
			src);
		FUNC2(fck_src);
		return r;
	}

	FUNC5(mcbsp->dev);

	FUNC2(fck_src);

	return 0;
}