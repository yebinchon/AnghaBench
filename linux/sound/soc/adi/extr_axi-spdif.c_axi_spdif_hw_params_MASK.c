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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axi_spdif {int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXI_SPDIF_CTRL_CLKDIV_MASK ; 
 unsigned int AXI_SPDIF_CTRL_CLKDIV_OFFSET ; 
 unsigned int AXI_SPDIF_FREQ_32000 ; 
 unsigned int AXI_SPDIF_FREQ_44100 ; 
 unsigned int AXI_SPDIF_FREQ_48000 ; 
 unsigned int AXI_SPDIF_FREQ_NA ; 
 int /*<<< orphan*/  AXI_SPDIF_REG_CTRL ; 
 int /*<<< orphan*/  AXI_SPDIF_REG_STAT ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct axi_spdif* FUNC5 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct axi_spdif *spdif = FUNC5(dai);
	unsigned int rate = FUNC2(params);
	unsigned int clkdiv, stat;

	switch (FUNC2(params)) {
	case 32000:
		stat = AXI_SPDIF_FREQ_32000;
		break;
	case 44100:
		stat = AXI_SPDIF_FREQ_44100;
		break;
	case 48000:
		stat = AXI_SPDIF_FREQ_48000;
		break;
	default:
		stat = AXI_SPDIF_FREQ_NA;
		break;
	}

	clkdiv = FUNC0(FUNC1(spdif->clk_ref),
			rate * 64 * 2) - 1;
	clkdiv <<= AXI_SPDIF_CTRL_CLKDIV_OFFSET;

	FUNC4(spdif->regmap, AXI_SPDIF_REG_STAT, stat);
	FUNC3(spdif->regmap, AXI_SPDIF_REG_CTRL,
		AXI_SPDIF_CTRL_CLKDIV_MASK, clkdiv);

	return 0;
}