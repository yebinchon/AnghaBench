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
struct omap_dmic {unsigned int fclk_freq; int sysclk; int /*<<< orphan*/  dev; int /*<<< orphan*/  mutex; scalar_t__ active; int /*<<< orphan*/  fclk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct clk*) ; 
#define  OMAP_DMIC_SYSCLK_PAD_CLKS 130 
#define  OMAP_DMIC_SYSCLK_SLIMBLUS_CLKS 129 
#define  OMAP_DMIC_SYSCLK_SYNC_MUX_CLKS 128 
 struct clk* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (struct clk*,struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (struct omap_dmic*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct omap_dmic *dmic, int clk_id,
				 unsigned int freq)
{
	struct clk *parent_clk, *mux;
	char *parent_clk_name;
	int ret = 0;

	switch (freq) {
	case 12000000:
	case 19200000:
	case 24000000:
	case 24576000:
		break;
	default:
		FUNC5(dmic->dev, "invalid input frequency: %dHz\n", freq);
		dmic->fclk_freq = 0;
		return -EINVAL;
	}

	if (dmic->sysclk == clk_id) {
		dmic->fclk_freq = freq;
		return 0;
	}

	/* re-parent not allowed if a stream is ongoing */
	if (dmic->active && FUNC6(dmic)) {
		FUNC5(dmic->dev, "can't re-parent when DMIC active\n");
		return -EBUSY;
	}

	switch (clk_id) {
	case OMAP_DMIC_SYSCLK_PAD_CLKS:
		parent_clk_name = "pad_clks_ck";
		break;
	case OMAP_DMIC_SYSCLK_SLIMBLUS_CLKS:
		parent_clk_name = "slimbus_clk";
		break;
	case OMAP_DMIC_SYSCLK_SYNC_MUX_CLKS:
		parent_clk_name = "dmic_sync_mux_ck";
		break;
	default:
		FUNC5(dmic->dev, "fclk clk_id (%d) not supported\n", clk_id);
		return -EINVAL;
	}

	parent_clk = FUNC1(dmic->dev, parent_clk_name);
	if (FUNC0(parent_clk)) {
		FUNC5(dmic->dev, "can't get %s\n", parent_clk_name);
		return -ENODEV;
	}

	mux = FUNC2(dmic->fclk);
	if (FUNC0(mux)) {
		FUNC5(dmic->dev, "can't get fck mux parent\n");
		FUNC3(parent_clk);
		return -ENODEV;
	}

	FUNC7(&dmic->mutex);
	if (dmic->active) {
		/* disable clock while reparenting */
		FUNC10(dmic->dev);
		ret = FUNC4(mux, parent_clk);
		FUNC9(dmic->dev);
	} else {
		ret = FUNC4(mux, parent_clk);
	}
	FUNC8(&dmic->mutex);

	if (ret < 0) {
		FUNC5(dmic->dev, "re-parent failed\n");
		goto err_busy;
	}

	dmic->sysclk = clk_id;
	dmic->fclk_freq = freq;

err_busy:
	FUNC3(mux);
	FUNC3(parent_clk);

	return ret;
}