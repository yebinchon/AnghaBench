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
typedef  scalar_t__ u32 ;
struct snd_soc_dai_link {scalar_t__ dpcm_capture; scalar_t__ dpcm_playback; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct axg_dai_link_tdm_data {int slots; int slot_width; scalar_t__* rx_mask; scalar_t__* tx_mask; } ;

/* Variables and functions */
 int AXG_TDM_NUM_LANES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_card *card,
					struct snd_soc_dai_link *link,
					struct device_node *node,
					struct axg_dai_link_tdm_data *be)
{
	char propname[32];
	u32 tx, rx;
	int i;

	be->tx_mask = FUNC1(card->dev, AXG_TDM_NUM_LANES,
				   sizeof(*be->tx_mask), GFP_KERNEL);
	be->rx_mask = FUNC1(card->dev, AXG_TDM_NUM_LANES,
				   sizeof(*be->rx_mask), GFP_KERNEL);
	if (!be->tx_mask || !be->rx_mask)
		return -ENOMEM;

	for (i = 0, tx = 0; i < AXG_TDM_NUM_LANES; i++) {
		FUNC6(propname, 32, "dai-tdm-slot-tx-mask-%d", i);
		FUNC5(node, propname, &be->tx_mask[i]);
		tx = FUNC3(tx, be->tx_mask[i]);
	}

	/* Disable playback is the interface has no tx slots */
	if (!tx)
		link->dpcm_playback = 0;

	for (i = 0, rx = 0; i < AXG_TDM_NUM_LANES; i++) {
		FUNC6(propname, 32, "dai-tdm-slot-rx-mask-%d", i);
		FUNC5(node, propname, &be->rx_mask[i]);
		rx = FUNC3(rx, be->rx_mask[i]);
	}

	/* Disable capture is the interface has no rx slots */
	if (!rx)
		link->dpcm_capture = 0;

	/* ... but the interface should at least have one of them */
	if (!tx && !rx) {
		FUNC0(card->dev, "tdm link has no cpu slots\n");
		return -EINVAL;
	}

	FUNC4(node, "dai-tdm-slot-num", &be->slots);
	if (!be->slots) {
		/*
		 * If the slot number is not provided, set it such as it
		 * accommodates the largest mask
		 */
		be->slots = FUNC2(FUNC3(tx, rx));
	} else if (be->slots < FUNC2(FUNC3(tx, rx)) || be->slots > 32) {
		/*
		 * Error if the slots can't accommodate the largest mask or
		 * if it is just too big
		 */
		FUNC0(card->dev, "bad slot number\n");
		return -EINVAL;
	}

	FUNC4(node, "dai-tdm-slot-width", &be->slot_width);

	return 0;
}