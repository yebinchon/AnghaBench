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
struct davinci_mcasp {int bclk_master; unsigned int dai_fmt; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACLKRE ; 
 int /*<<< orphan*/  ACLKRPOL ; 
 int /*<<< orphan*/  ACLKXE ; 
 int /*<<< orphan*/  ACLKXPOL ; 
 int /*<<< orphan*/  AFSRE ; 
 int /*<<< orphan*/  AFSXE ; 
 int /*<<< orphan*/  DAVINCI_MCASP_ACLKRCTL_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_ACLKXCTL_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_RXFMCTL_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_RXFMT_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_TXFMCTL_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_TXFMT_REG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FSRDUR ; 
 int /*<<< orphan*/  FSRPOL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FSXDUR ; 
 int /*<<< orphan*/  FSXPOL ; 
 int /*<<< orphan*/  PIN_BIT_ACLKR ; 
 int /*<<< orphan*/  PIN_BIT_ACLKX ; 
 int /*<<< orphan*/  PIN_BIT_AFSR ; 
 int /*<<< orphan*/  PIN_BIT_AFSX ; 
#define  SND_SOC_DAIFMT_AC97 141 
#define  SND_SOC_DAIFMT_CBM_CFM 140 
#define  SND_SOC_DAIFMT_CBM_CFS 139 
#define  SND_SOC_DAIFMT_CBS_CFM 138 
#define  SND_SOC_DAIFMT_CBS_CFS 137 
#define  SND_SOC_DAIFMT_DSP_A 136 
#define  SND_SOC_DAIFMT_DSP_B 135 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 134 
#define  SND_SOC_DAIFMT_IB_IF 133 
#define  SND_SOC_DAIFMT_IB_NF 132 
 unsigned int SND_SOC_DAIFMT_INV_MASK ; 
#define  SND_SOC_DAIFMT_LEFT_J 131 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
#define  SND_SOC_DAIFMT_NB_IF 130 
#define  SND_SOC_DAIFMT_NB_NF 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct davinci_mcasp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct davinci_mcasp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct davinci_mcasp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct davinci_mcasp* FUNC9 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_dai *cpu_dai,
					 unsigned int fmt)
{
	struct davinci_mcasp *mcasp = FUNC9(cpu_dai);
	int ret = 0;
	u32 data_delay;
	bool fs_pol_rising;
	bool inv_fs = false;

	if (!fmt)
		return 0;

	FUNC6(mcasp->dev);
	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_DSP_A:
		FUNC3(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXDUR);
		FUNC3(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRDUR);
		/* 1st data bit occur one ACLK cycle after the frame sync */
		data_delay = 1;
		break;
	case SND_SOC_DAIFMT_DSP_B:
	case SND_SOC_DAIFMT_AC97:
		FUNC3(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXDUR);
		FUNC3(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRDUR);
		/* No delay after FS */
		data_delay = 0;
		break;
	case SND_SOC_DAIFMT_I2S:
		/* configure a full-word SYNC pulse (LRCLK) */
		FUNC5(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXDUR);
		FUNC5(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRDUR);
		/* 1st data bit occur one ACLK cycle after the frame sync */
		data_delay = 1;
		/* FS need to be inverted */
		inv_fs = true;
		break;
	case SND_SOC_DAIFMT_RIGHT_J:
	case SND_SOC_DAIFMT_LEFT_J:
		/* configure a full-word SYNC pulse (LRCLK) */
		FUNC5(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXDUR);
		FUNC5(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRDUR);
		/* No delay after FS */
		data_delay = 0;
		break;
	default:
		ret = -EINVAL;
		goto out;
	}

	FUNC4(mcasp, DAVINCI_MCASP_TXFMT_REG, FUNC1(data_delay),
		       FUNC1(3));
	FUNC4(mcasp, DAVINCI_MCASP_RXFMT_REG, FUNC0(data_delay),
		       FUNC0(3));

	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBS_CFS:
		/* codec is clock and frame slave */
		FUNC5(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXE);
		FUNC5(mcasp, DAVINCI_MCASP_TXFMCTL_REG, AFSXE);

		FUNC5(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRE);
		FUNC5(mcasp, DAVINCI_MCASP_RXFMCTL_REG, AFSRE);

		/* BCLK */
		FUNC8(PIN_BIT_ACLKX, &mcasp->pdir);
		FUNC8(PIN_BIT_ACLKR, &mcasp->pdir);
		/* Frame Sync */
		FUNC8(PIN_BIT_AFSX, &mcasp->pdir);
		FUNC8(PIN_BIT_AFSR, &mcasp->pdir);

		mcasp->bclk_master = 1;
		break;
	case SND_SOC_DAIFMT_CBS_CFM:
		/* codec is clock slave and frame master */
		FUNC5(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXE);
		FUNC3(mcasp, DAVINCI_MCASP_TXFMCTL_REG, AFSXE);

		FUNC5(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRE);
		FUNC3(mcasp, DAVINCI_MCASP_RXFMCTL_REG, AFSRE);

		/* BCLK */
		FUNC8(PIN_BIT_ACLKX, &mcasp->pdir);
		FUNC8(PIN_BIT_ACLKR, &mcasp->pdir);
		/* Frame Sync */
		FUNC2(PIN_BIT_AFSX, &mcasp->pdir);
		FUNC2(PIN_BIT_AFSR, &mcasp->pdir);

		mcasp->bclk_master = 1;
		break;
	case SND_SOC_DAIFMT_CBM_CFS:
		/* codec is clock master and frame slave */
		FUNC3(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXE);
		FUNC5(mcasp, DAVINCI_MCASP_TXFMCTL_REG, AFSXE);

		FUNC3(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRE);
		FUNC5(mcasp, DAVINCI_MCASP_RXFMCTL_REG, AFSRE);

		/* BCLK */
		FUNC2(PIN_BIT_ACLKX, &mcasp->pdir);
		FUNC2(PIN_BIT_ACLKR, &mcasp->pdir);
		/* Frame Sync */
		FUNC8(PIN_BIT_AFSX, &mcasp->pdir);
		FUNC8(PIN_BIT_AFSR, &mcasp->pdir);

		mcasp->bclk_master = 0;
		break;
	case SND_SOC_DAIFMT_CBM_CFM:
		/* codec is clock and frame master */
		FUNC3(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXE);
		FUNC3(mcasp, DAVINCI_MCASP_TXFMCTL_REG, AFSXE);

		FUNC3(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRE);
		FUNC3(mcasp, DAVINCI_MCASP_RXFMCTL_REG, AFSRE);

		/* BCLK */
		FUNC2(PIN_BIT_ACLKX, &mcasp->pdir);
		FUNC2(PIN_BIT_ACLKR, &mcasp->pdir);
		/* Frame Sync */
		FUNC2(PIN_BIT_AFSX, &mcasp->pdir);
		FUNC2(PIN_BIT_AFSR, &mcasp->pdir);

		mcasp->bclk_master = 0;
		break;
	default:
		ret = -EINVAL;
		goto out;
	}

	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
	case SND_SOC_DAIFMT_IB_NF:
		FUNC3(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXPOL);
		FUNC3(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRPOL);
		fs_pol_rising = true;
		break;
	case SND_SOC_DAIFMT_NB_IF:
		FUNC5(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXPOL);
		FUNC5(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRPOL);
		fs_pol_rising = false;
		break;
	case SND_SOC_DAIFMT_IB_IF:
		FUNC3(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXPOL);
		FUNC3(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRPOL);
		fs_pol_rising = false;
		break;
	case SND_SOC_DAIFMT_NB_NF:
		FUNC5(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXPOL);
		FUNC5(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRPOL);
		fs_pol_rising = true;
		break;
	default:
		ret = -EINVAL;
		goto out;
	}

	if (inv_fs)
		fs_pol_rising = !fs_pol_rising;

	if (fs_pol_rising) {
		FUNC3(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXPOL);
		FUNC3(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRPOL);
	} else {
		FUNC5(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXPOL);
		FUNC5(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRPOL);
	}

	mcasp->dai_fmt = fmt;
out:
	FUNC7(mcasp->dev);
	return ret;
}