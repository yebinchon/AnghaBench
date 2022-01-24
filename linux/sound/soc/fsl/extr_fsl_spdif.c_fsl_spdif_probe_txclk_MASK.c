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
typedef  int u32 ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fsl_spdif_priv {int* txclk_src; int const* txclk_df; int const* sysclk_df; int const* txrate; int /*<<< orphan*/  sysclk; struct clk** txclk; struct platform_device* pdev; } ;
struct clk {int dummy; } ;
typedef  enum spdif_txrate { ____Placeholder_spdif_txrate } spdif_txrate ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int STC_TXCLK_SPDIF_ROOT ; 
 int STC_TXCLK_SRC_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 scalar_t__ FUNC3 (struct clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int const,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 struct clk* FUNC6 (struct device*,char*) ; 
 int FUNC7 (struct fsl_spdif_priv*,struct clk*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int FUNC9(struct fsl_spdif_priv *spdif_priv,
				enum spdif_txrate index)
{
	static const u32 rate[] = { 32000, 44100, 48000, 96000, 192000 };
	struct platform_device *pdev = spdif_priv->pdev;
	struct device *dev = &pdev->dev;
	u64 savesub = 100000, ret;
	struct clk *clk;
	char tmp[16];
	int i;

	for (i = 0; i < STC_TXCLK_SRC_MAX; i++) {
		FUNC8(tmp, "rxtx%d", i);
		clk = FUNC6(&pdev->dev, tmp);
		if (FUNC0(clk)) {
			FUNC5(dev, "no rxtx%d clock in devicetree\n", i);
			return FUNC1(clk);
		}
		if (!FUNC2(clk))
			continue;

		ret = FUNC7(spdif_priv, clk, savesub, index,
					     i == STC_TXCLK_SPDIF_ROOT);
		if (savesub == ret)
			continue;

		savesub = ret;
		spdif_priv->txclk[index] = clk;
		spdif_priv->txclk_src[index] = i;

		/* To quick catch a divisor, we allow a 0.1% deviation */
		if (savesub < 100)
			break;
	}

	FUNC4(&pdev->dev, "use rxtx%d as tx clock source for %dHz sample rate\n",
			spdif_priv->txclk_src[index], rate[index]);
	FUNC4(&pdev->dev, "use txclk df %d for %dHz sample rate\n",
			spdif_priv->txclk_df[index], rate[index]);
	if (FUNC3(spdif_priv->txclk[index], spdif_priv->sysclk))
		FUNC4(&pdev->dev, "use sysclk df %d for %dHz sample rate\n",
				spdif_priv->sysclk_df[index], rate[index]);
	FUNC4(&pdev->dev, "the best rate for %dHz sample rate is %dHz\n",
			rate[index], spdif_priv->txrate[index]);

	return 0;
}