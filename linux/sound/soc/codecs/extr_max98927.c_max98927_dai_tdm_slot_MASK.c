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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct max98927_priv {int tdm_mode; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX98927_PCM_CLK_SETUP_BSEL_MASK ; 
 unsigned int MAX98927_PCM_MODE_CFG_CHANSZ_16 ; 
 unsigned int MAX98927_PCM_MODE_CFG_CHANSZ_24 ; 
 unsigned int MAX98927_PCM_MODE_CFG_CHANSZ_32 ; 
 int /*<<< orphan*/  MAX98927_PCM_MODE_CFG_CHANSZ_MASK ; 
 int /*<<< orphan*/  MAX98927_R0018_PCM_RX_EN_A ; 
 int /*<<< orphan*/  MAX98927_R0019_PCM_RX_EN_B ; 
 int /*<<< orphan*/  MAX98927_R001A_PCM_TX_EN_A ; 
 int /*<<< orphan*/  MAX98927_R001B_PCM_TX_EN_B ; 
 int /*<<< orphan*/  MAX98927_R001C_PCM_TX_HIZ_CTRL_A ; 
 int /*<<< orphan*/  MAX98927_R001D_PCM_TX_HIZ_CTRL_B ; 
 int /*<<< orphan*/  MAX98927_R0020_PCM_MODE_CFG ; 
 int /*<<< orphan*/  MAX98927_R0022_PCM_CLK_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct max98927_priv* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *dai,
	unsigned int tx_mask, unsigned int rx_mask,
	int slots, int slot_width)
{
	struct snd_soc_component *component = dai->component;
	struct max98927_priv *max98927 = FUNC4(component);
	int bsel = 0;
	unsigned int chan_sz = 0;

	max98927->tdm_mode = true;

	/* BCLK configuration */
	bsel = FUNC1(slots * slot_width);
	if (bsel == 0) {
		FUNC0(component->dev, "BCLK %d not supported\n",
			slots * slot_width);
		return -EINVAL;
	}

	FUNC2(max98927->regmap,
		MAX98927_R0022_PCM_CLK_SETUP,
		MAX98927_PCM_CLK_SETUP_BSEL_MASK,
		bsel);

	/* Channel size configuration */
	switch (slot_width) {
	case 16:
		chan_sz = MAX98927_PCM_MODE_CFG_CHANSZ_16;
		break;
	case 24:
		chan_sz = MAX98927_PCM_MODE_CFG_CHANSZ_24;
		break;
	case 32:
		chan_sz = MAX98927_PCM_MODE_CFG_CHANSZ_32;
		break;
	default:
		FUNC0(component->dev, "format unsupported %d\n",
			slot_width);
		return -EINVAL;
	}

	FUNC2(max98927->regmap,
		MAX98927_R0020_PCM_MODE_CFG,
		MAX98927_PCM_MODE_CFG_CHANSZ_MASK, chan_sz);

	/* Rx slot configuration */
	FUNC3(max98927->regmap,
		MAX98927_R0018_PCM_RX_EN_A,
		rx_mask & 0xFF);
	FUNC3(max98927->regmap,
		MAX98927_R0019_PCM_RX_EN_B,
		(rx_mask & 0xFF00) >> 8);

	/* Tx slot configuration */
	FUNC3(max98927->regmap,
		MAX98927_R001A_PCM_TX_EN_A,
		tx_mask & 0xFF);
	FUNC3(max98927->regmap,
		MAX98927_R001B_PCM_TX_EN_B,
		(tx_mask & 0xFF00) >> 8);

	/* Tx slot Hi-Z configuration */
	FUNC3(max98927->regmap,
		MAX98927_R001C_PCM_TX_HIZ_CTRL_A,
		~tx_mask & 0xFF);
	FUNC3(max98927->regmap,
		MAX98927_R001D_PCM_TX_HIZ_CTRL_B,
		(~tx_mask & 0xFF00) >> 8);

	return 0;
}