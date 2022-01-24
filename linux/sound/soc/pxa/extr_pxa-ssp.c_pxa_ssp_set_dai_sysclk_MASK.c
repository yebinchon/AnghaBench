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
struct ssp_priv {int sysclk; scalar_t__ extclk; struct ssp_device* ssp; } ;
struct ssp_device {scalar_t__ type; int /*<<< orphan*/  clk; TYPE_1__* pdev; } ;
struct snd_soc_dai {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ PXA25x_SSP ; 
 scalar_t__ PXA3xx_SSP ; 
#define  PXA_SSP_CLK_AUDIO 132 
#define  PXA_SSP_CLK_EXT 131 
#define  PXA_SSP_CLK_NET 130 
#define  PXA_SSP_CLK_NET_PLL 129 
#define  PXA_SSP_CLK_PLL 128 
 int /*<<< orphan*/  SSCR0 ; 
 int SSCR0_ACS ; 
 int SSCR0_ECS ; 
 int SSCR0_MOD ; 
 int SSCR0_NCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC4 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ssp_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ssp_device*,int /*<<< orphan*/ ,int) ; 
 struct ssp_priv* FUNC7 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dai *cpu_dai,
	int clk_id, unsigned int freq, int dir)
{
	struct ssp_priv *priv = FUNC7(cpu_dai);
	struct ssp_device *ssp = priv->ssp;

	u32 sscr0 = FUNC4(ssp, SSCR0) &
		~(SSCR0_ECS | SSCR0_NCS | SSCR0_MOD | SSCR0_ACS);

	if (priv->extclk) {
		int ret;

		/*
		 * For DT based boards, if an extclk is given, use it
		 * here and configure PXA_SSP_CLK_EXT.
		 */

		ret = FUNC2(priv->extclk, freq);
		if (ret < 0)
			return ret;

		clk_id = PXA_SSP_CLK_EXT;
	}

	FUNC3(&ssp->pdev->dev,
		"pxa_ssp_set_dai_sysclk id: %d, clk_id %d, freq %u\n",
		cpu_dai->id, clk_id, freq);

	switch (clk_id) {
	case PXA_SSP_CLK_NET_PLL:
		sscr0 |= SSCR0_MOD;
		break;
	case PXA_SSP_CLK_PLL:
		/* Internal PLL is fixed */
		if (ssp->type == PXA25x_SSP)
			priv->sysclk = 1843200;
		else
			priv->sysclk = 13000000;
		break;
	case PXA_SSP_CLK_EXT:
		priv->sysclk = freq;
		sscr0 |= SSCR0_ECS;
		break;
	case PXA_SSP_CLK_NET:
		priv->sysclk = freq;
		sscr0 |= SSCR0_NCS | SSCR0_MOD;
		break;
	case PXA_SSP_CLK_AUDIO:
		priv->sysclk = 0;
		FUNC5(ssp, 1);
		sscr0 |= SSCR0_ACS;
		break;
	default:
		return -ENODEV;
	}

	/* The SSP clock must be disabled when changing SSP clock mode
	 * on PXA2xx.  On PXA3xx it must be enabled when doing so. */
	if (ssp->type != PXA3xx_SSP)
		FUNC0(ssp->clk);
	FUNC6(ssp, SSCR0, sscr0);
	if (ssp->type != PXA3xx_SSP)
		FUNC1(ssp->clk);

	return 0;
}