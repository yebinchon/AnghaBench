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
struct snd_soc_dai {int id; } ;
struct regmap {int dummy; } ;
struct max98504_priv {struct regmap* regmap; } ;

/* Variables and functions */
#define  MAX98504_DAI_ID_PCM 129 
#define  MAX98504_DAI_ID_PDM 128 
 int /*<<< orphan*/  MAX98504_MEASUREMENT_ENABLE ; 
 int /*<<< orphan*/  MAX98504_PCM_TX_CHANNEL_SOURCES ; 
 int /*<<< orphan*/  MAX98504_PDM_TX_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 struct max98504_priv* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai,
		unsigned int tx_num, unsigned int *tx_slot,
		unsigned int rx_num, unsigned int *rx_slot)
{
	struct max98504_priv *max98504 = FUNC2(dai);
	struct regmap *map = max98504->regmap;
	unsigned int i, sources = 0;

	for (i = 0; i < tx_num; i++)
		if (tx_slot[i])
			sources |= (1 << i);

	switch (dai->id) {
	case MAX98504_DAI_ID_PCM:
		FUNC1(map, MAX98504_PCM_TX_CHANNEL_SOURCES,
			     sources);
		break;

	case MAX98504_DAI_ID_PDM:
		FUNC1(map, MAX98504_PDM_TX_CONTROL, sources);
		break;
	default:
		FUNC0(1);
	}

	FUNC1(map, MAX98504_MEASUREMENT_ENABLE, sources ? 0x3 : 0x01);

	return 0;
}