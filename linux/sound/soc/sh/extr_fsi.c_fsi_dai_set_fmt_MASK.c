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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct fsi_priv {int clk_master; int bit_clk_inv; int lr_clk_inv; scalar_t__ clk_cpg; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAIFMT_CBM_CFM 133 
#define  SND_SOC_DAIFMT_CBS_CFS 132 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_IB_IF 131 
#define  SND_SOC_DAIFMT_IB_NF 130 
 unsigned int SND_SOC_DAIFMT_INV_MASK ; 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
#define  SND_SOC_DAIFMT_NB_IF 129 
#define  SND_SOC_DAIFMT_NB_NF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fsi_priv*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsi_clk_set_rate_cpg ; 
 int /*<<< orphan*/  fsi_clk_set_rate_external ; 
 struct fsi_priv* FUNC1 (struct snd_soc_dai*) ; 
 scalar_t__ FUNC2 (struct fsi_priv*) ; 
 scalar_t__ FUNC3 (struct fsi_priv*) ; 
 int FUNC4 (struct fsi_priv*,unsigned int) ; 
 int FUNC5 (struct fsi_priv*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct fsi_priv *fsi = FUNC1(dai);
	int ret;

	/* set master/slave audio interface */
	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBM_CFM:
		break;
	case SND_SOC_DAIFMT_CBS_CFS:
		fsi->clk_master = 1; /* codec is slave, cpu is master */
		break;
	default:
		return -EINVAL;
	}

	/* set clock inversion */
	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
	case SND_SOC_DAIFMT_NB_IF:
		fsi->bit_clk_inv = 0;
		fsi->lr_clk_inv = 1;
		break;
	case SND_SOC_DAIFMT_IB_NF:
		fsi->bit_clk_inv = 1;
		fsi->lr_clk_inv = 0;
		break;
	case SND_SOC_DAIFMT_IB_IF:
		fsi->bit_clk_inv = 1;
		fsi->lr_clk_inv = 1;
		break;
	case SND_SOC_DAIFMT_NB_NF:
	default:
		fsi->bit_clk_inv = 0;
		fsi->lr_clk_inv = 0;
		break;
	}

	if (FUNC2(fsi)) {
		if (fsi->clk_cpg)
			FUNC0(dai->dev, fsi, 0, 1, 1,
				     fsi_clk_set_rate_cpg);
		else
			FUNC0(dai->dev, fsi, 1, 1, 0,
				     fsi_clk_set_rate_external);
	}

	/* set format */
	if (FUNC3(fsi))
		ret = FUNC5(fsi);
	else
		ret = FUNC4(fsi, fmt & SND_SOC_DAIFMT_FORMAT_MASK);

	return ret;
}