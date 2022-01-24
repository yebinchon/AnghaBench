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
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_dai {int dummy; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct rsnd_priv* FUNC1 (struct snd_soc_dai*) ; 
 struct rsnd_dai* FUNC2 (struct snd_soc_dai*) ; 
 struct device* FUNC3 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_dai*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rsnd_dai*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rsnd_dai*,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dai *dai,
				     u32 tx_mask, u32 rx_mask,
				     int slots, int slot_width)
{
	struct rsnd_priv *priv = FUNC1(dai);
	struct rsnd_dai *rdai = FUNC2(dai);
	struct device *dev = FUNC3(priv);

	switch (slot_width) {
	case 16:
	case 24:
	case 32:
		break;
	default:
		/* use default */
		slot_width = 32;
	}

	switch (slots) {
	case 2:
		/* TDM Split Mode */
	case 6:
	case 8:
		/* TDM Extend Mode */
		FUNC4(rdai, slots);
		FUNC5(rdai, 1);
		FUNC6(rdai, slot_width);
		break;
	default:
		FUNC0(dev, "unsupported TDM slots (%d)\n", slots);
		return -EINVAL;
	}

	return 0;
}