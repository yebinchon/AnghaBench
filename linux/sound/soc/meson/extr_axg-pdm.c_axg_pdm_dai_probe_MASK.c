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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct axg_pdm {int /*<<< orphan*/  pclk; int /*<<< orphan*/  sysclk; int /*<<< orphan*/  map; TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  sys_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDM_CTRL ; 
 int /*<<< orphan*/  PDM_CTRL_BYPASS_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axg_pdm*) ; 
 int /*<<< orphan*/  FUNC2 (struct axg_pdm*) ; 
 int FUNC3 (struct axg_pdm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axg_pdm* FUNC9 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_dai *dai)
{
	struct axg_pdm *priv = FUNC9(dai);
	int ret;

	ret = FUNC5(priv->pclk);
	if (ret) {
		FUNC7(dai->dev, "enabling pclk failed\n");
		return ret;
	}

	/*
	 * sysclk must be set and enabled as well to access the pdm registers
	 * Accessing the register w/o it will give a bus error.
	 */
	ret = FUNC6(priv->sysclk, priv->cfg->sys_rate);
	if (ret) {
		FUNC7(dai->dev, "setting sysclk failed\n");
		goto err_pclk;
	}

	ret = FUNC5(priv->sysclk);
	if (ret) {
		FUNC7(dai->dev, "enabling sysclk failed\n");
		goto err_pclk;
	}

	/* Make sure the device is initially disabled */
	FUNC0(priv->map);

	/* Make sure filter bypass is disabled */
	FUNC8(priv->map, PDM_CTRL, PDM_CTRL_BYPASS_MODE, 0);

	/* Load filter settings */
	FUNC1(priv);
	FUNC2(priv);

	ret = FUNC3(priv);
	if (ret) {
		FUNC7(dai->dev, "invalid filter configuration\n");
		goto err_sysclk;
	}

	return 0;

err_sysclk:
	FUNC4(priv->sysclk);
err_pclk:
	FUNC4(priv->pclk);
	return ret;
}