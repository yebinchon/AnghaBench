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
struct snd_soc_dai {int dummy; } ;
struct omap_dmic {int /*<<< orphan*/  dma_data; scalar_t__ threshold; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DMIC_CTRL_REG ; 
 scalar_t__ OMAP_DMIC_THRES_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dmic*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct omap_dmic* FUNC4 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dai *dai)
{
	struct omap_dmic *dmic = FUNC4(dai);

	FUNC1(dmic->dev);

	/* Disable lines while request is ongoing */
	FUNC2(dmic->dev);
	FUNC0(dmic, OMAP_DMIC_CTRL_REG, 0x00);
	FUNC3(dmic->dev);

	/* Configure DMIC threshold value */
	dmic->threshold = OMAP_DMIC_THRES_MAX - 3;

	FUNC5(dai, NULL, &dmic->dma_data);

	return 0;
}