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
struct snd_soc_dai {TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct arizona {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int base; } ;

/* Variables and functions */
 int ARIZONA_AIF1RX_LRCLK_INV ; 
 int ARIZONA_AIF1RX_LRCLK_MSTR ; 
 int ARIZONA_AIF1TX_LRCLK_INV ; 
 int ARIZONA_AIF1TX_LRCLK_MSTR ; 
 int ARIZONA_AIF1_BCLK_INV ; 
 int ARIZONA_AIF1_BCLK_MSTR ; 
 int /*<<< orphan*/  ARIZONA_AIF1_FMT_MASK ; 
 scalar_t__ ARIZONA_AIF_BCLK_CTRL ; 
 scalar_t__ ARIZONA_AIF_FORMAT ; 
 scalar_t__ ARIZONA_AIF_RX_PIN_CTRL ; 
 scalar_t__ ARIZONA_AIF_TX_PIN_CTRL ; 
 int ARIZONA_FMT_DSP_MODE_A ; 
 int ARIZONA_FMT_DSP_MODE_B ; 
 int ARIZONA_FMT_I2S_MODE ; 
 int ARIZONA_FMT_LEFT_JUSTIFIED_MODE ; 
 int EINVAL ; 
#define  SND_SOC_DAIFMT_CBM_CFM 139 
#define  SND_SOC_DAIFMT_CBM_CFS 138 
#define  SND_SOC_DAIFMT_CBS_CFM 137 
#define  SND_SOC_DAIFMT_CBS_CFS 136 
#define  SND_SOC_DAIFMT_DSP_A 135 
#define  SND_SOC_DAIFMT_DSP_B 134 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 133 
#define  SND_SOC_DAIFMT_IB_IF 132 
#define  SND_SOC_DAIFMT_IB_NF 131 
 unsigned int SND_SOC_DAIFMT_INV_MASK ; 
#define  SND_SOC_DAIFMT_LEFT_J 130 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
#define  SND_SOC_DAIFMT_NB_IF 129 
#define  SND_SOC_DAIFMT_NB_NF 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dai*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 struct arizona_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct snd_soc_component *component = dai->component;
	struct arizona_priv *priv = FUNC3(component);
	struct arizona *arizona = priv->arizona;
	int lrclk, bclk, mode, base;

	base = dai->driver->base;

	lrclk = 0;
	bclk = 0;

	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_DSP_A:
		mode = ARIZONA_FMT_DSP_MODE_A;
		break;
	case SND_SOC_DAIFMT_DSP_B:
		if ((fmt & SND_SOC_DAIFMT_MASTER_MASK)
				!= SND_SOC_DAIFMT_CBM_CFM) {
			FUNC0(dai, "DSP_B not valid in slave mode\n");
			return -EINVAL;
		}
		mode = ARIZONA_FMT_DSP_MODE_B;
		break;
	case SND_SOC_DAIFMT_I2S:
		mode = ARIZONA_FMT_I2S_MODE;
		break;
	case SND_SOC_DAIFMT_LEFT_J:
		if ((fmt & SND_SOC_DAIFMT_MASTER_MASK)
				!= SND_SOC_DAIFMT_CBM_CFM) {
			FUNC0(dai, "LEFT_J not valid in slave mode\n");
			return -EINVAL;
		}
		mode = ARIZONA_FMT_LEFT_JUSTIFIED_MODE;
		break;
	default:
		FUNC0(dai, "Unsupported DAI format %d\n",
				fmt & SND_SOC_DAIFMT_FORMAT_MASK);
		return -EINVAL;
	}

	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBS_CFS:
		break;
	case SND_SOC_DAIFMT_CBS_CFM:
		lrclk |= ARIZONA_AIF1TX_LRCLK_MSTR;
		break;
	case SND_SOC_DAIFMT_CBM_CFS:
		bclk |= ARIZONA_AIF1_BCLK_MSTR;
		break;
	case SND_SOC_DAIFMT_CBM_CFM:
		bclk |= ARIZONA_AIF1_BCLK_MSTR;
		lrclk |= ARIZONA_AIF1TX_LRCLK_MSTR;
		break;
	default:
		FUNC0(dai, "Unsupported master mode %d\n",
				fmt & SND_SOC_DAIFMT_MASTER_MASK);
		return -EINVAL;
	}

	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
	case SND_SOC_DAIFMT_NB_NF:
		break;
	case SND_SOC_DAIFMT_IB_IF:
		bclk |= ARIZONA_AIF1_BCLK_INV;
		lrclk |= ARIZONA_AIF1TX_LRCLK_INV;
		break;
	case SND_SOC_DAIFMT_IB_NF:
		bclk |= ARIZONA_AIF1_BCLK_INV;
		break;
	case SND_SOC_DAIFMT_NB_IF:
		lrclk |= ARIZONA_AIF1TX_LRCLK_INV;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(arizona->regmap, base + ARIZONA_AIF_BCLK_CTRL,
				 ARIZONA_AIF1_BCLK_INV |
				 ARIZONA_AIF1_BCLK_MSTR,
				 bclk);
	FUNC2(arizona->regmap, base + ARIZONA_AIF_TX_PIN_CTRL,
				 ARIZONA_AIF1TX_LRCLK_INV |
				 ARIZONA_AIF1TX_LRCLK_MSTR, lrclk);
	FUNC2(arizona->regmap,
				 base + ARIZONA_AIF_RX_PIN_CTRL,
				 ARIZONA_AIF1RX_LRCLK_INV |
				 ARIZONA_AIF1RX_LRCLK_MSTR, lrclk);
	FUNC1(arizona->regmap, base + ARIZONA_AIF_FORMAT,
			   ARIZONA_AIF1_FMT_MASK, mode);

	return 0;
}