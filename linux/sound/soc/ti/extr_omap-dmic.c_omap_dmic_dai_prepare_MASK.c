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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct omap_dmic {int threshold; int /*<<< orphan*/  clk_div; int /*<<< orphan*/  latency; int /*<<< orphan*/  pm_qos_req; } ;

/* Variables and functions */
 int OMAP_DMICOUTFORMAT_LJUST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int OMAP_DMIC_CLK_DIV_MASK ; 
 int /*<<< orphan*/  OMAP_DMIC_CTRL_REG ; 
 int /*<<< orphan*/  OMAP_DMIC_FIFO_CTRL_REG ; 
 int OMAP_DMIC_FORMAT ; 
 int OMAP_DMIC_POLAR1 ; 
 int OMAP_DMIC_POLAR2 ; 
 int OMAP_DMIC_POLAR3 ; 
 int OMAP_DMIC_POLAR_MASK ; 
 int FUNC1 (struct omap_dmic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dmic*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct omap_dmic* FUNC5 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				  struct snd_soc_dai *dai)
{
	struct omap_dmic *dmic = FUNC5(dai);
	u32 ctrl;

	if (FUNC3(&dmic->pm_qos_req))
		FUNC4(&dmic->pm_qos_req, dmic->latency);

	/* Configure uplink threshold */
	FUNC2(dmic, OMAP_DMIC_FIFO_CTRL_REG, dmic->threshold);

	ctrl = FUNC1(dmic, OMAP_DMIC_CTRL_REG);

	/* Set dmic out format */
	ctrl &= ~(OMAP_DMIC_FORMAT | OMAP_DMIC_POLAR_MASK);
	ctrl |= (OMAP_DMICOUTFORMAT_LJUST | OMAP_DMIC_POLAR1 |
		 OMAP_DMIC_POLAR2 | OMAP_DMIC_POLAR3);

	/* Configure dmic clock divider */
	ctrl &= ~OMAP_DMIC_CLK_DIV_MASK;
	ctrl |= FUNC0(dmic->clk_div);

	FUNC2(dmic, OMAP_DMIC_CTRL_REG, ctrl);

	FUNC2(dmic, OMAP_DMIC_CTRL_REG,
			ctrl | OMAP_DMICOUTFORMAT_LJUST | OMAP_DMIC_POLAR1 |
			OMAP_DMIC_POLAR2 | OMAP_DMIC_POLAR3);

	return 0;
}