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
typedef  size_t u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct regmap {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_spdif_priv {int /*<<< orphan*/  sysclk; struct platform_device* pdev; struct regmap* regmap; } ;
typedef  enum spdif_gainsel { ____Placeholder_spdif_gainsel } spdif_gainsel ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SPDIF_SRFM ; 
 int /*<<< orphan*/  REG_SPDIF_SRPC ; 
 int SRPC_CLKSRC_SEL_OFFSET ; 
 int SRPC_DPLL_LOCKED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int* gainsel_multi ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__* srpc_dpll_locked ; 

__attribute__((used)) static int FUNC4(struct fsl_spdif_priv *spdif_priv,
				enum spdif_gainsel gainsel)
{
	struct regmap *regmap = spdif_priv->regmap;
	struct platform_device *pdev = spdif_priv->pdev;
	u64 tmpval64, busclk_freq = 0;
	u32 freqmeas, phaseconf;
	u8 clksrc;

	FUNC3(regmap, REG_SPDIF_SRFM, &freqmeas);
	FUNC3(regmap, REG_SPDIF_SRPC, &phaseconf);

	clksrc = (phaseconf >> SRPC_CLKSRC_SEL_OFFSET) & 0xf;

	/* Get bus clock from system */
	if (srpc_dpll_locked[clksrc] && (phaseconf & SRPC_DPLL_LOCKED))
		busclk_freq = FUNC0(spdif_priv->sysclk);

	/* FreqMeas_CLK = (BUS_CLK * FreqMeas) / 2 ^ 10 / GAINSEL / 128 */
	tmpval64 = (u64) busclk_freq * freqmeas;
	FUNC2(tmpval64, gainsel_multi[gainsel] * 1024);
	FUNC2(tmpval64, 128 * 1024);

	FUNC1(&pdev->dev, "FreqMeas: %d\n", freqmeas);
	FUNC1(&pdev->dev, "BusclkFreq: %lld\n", busclk_freq);
	FUNC1(&pdev->dev, "RxRate: %lld\n", tmpval64);

	return (int)tmpval64;
}