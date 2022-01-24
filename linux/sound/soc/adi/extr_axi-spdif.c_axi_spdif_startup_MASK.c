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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct axi_spdif {int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk_ref; int /*<<< orphan*/  rate_constraints; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXI_SPDIF_CTRL_TXEN ; 
 int /*<<< orphan*/  AXI_SPDIF_REG_CTRL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct axi_spdif* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
	struct snd_soc_dai *dai)
{
	struct axi_spdif *spdif = FUNC3(dai);
	int ret;

	ret = FUNC2(substream->runtime, 0,
			   SNDRV_PCM_HW_PARAM_RATE,
			   &spdif->rate_constraints);
	if (ret)
		return ret;

	ret = FUNC0(spdif->clk_ref);
	if (ret)
		return ret;

	FUNC1(spdif->regmap, AXI_SPDIF_REG_CTRL,
		AXI_SPDIF_CTRL_TXEN, AXI_SPDIF_CTRL_TXEN);

	return 0;
}