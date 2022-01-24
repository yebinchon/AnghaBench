#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int slots; int slot_width; unsigned int mask; int avail_slots; } ;
struct uniperif {int /*<<< orphan*/  dev; TYPE_2__ tdm_slot; } ;
struct TYPE_3__ {struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_1__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UNIPERIF_ALLOWED_FRAME_SZ ; 
 int UNIPERIF_MAX_FRAME_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct uniperif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct sti_uniperiph_data* FUNC2 (struct snd_soc_dai*) ; 

int FUNC3(struct snd_soc_dai *dai, unsigned int tx_mask,
			       unsigned int rx_mask, int slots,
			       int slot_width)
{
	struct sti_uniperiph_data *priv = FUNC2(dai);
	struct uniperif *uni = priv->dai_data.uni;
	int i, frame_size, avail_slots;

	if (!FUNC0(uni)) {
		FUNC1(uni->dev, "cpu dai not in tdm mode\n");
		return -EINVAL;
	}

	/* store info in unip context */
	uni->tdm_slot.slots = slots;
	uni->tdm_slot.slot_width = slot_width;
	/* unip is unidirectionnal */
	uni->tdm_slot.mask = (tx_mask != 0) ? tx_mask : rx_mask;

	/* number of available timeslots */
	for (i = 0, avail_slots = 0; i < uni->tdm_slot.slots; i++) {
		if ((uni->tdm_slot.mask >> i) & 0x01)
			avail_slots++;
	}
	uni->tdm_slot.avail_slots = avail_slots;

	/* frame size in bytes */
	frame_size = uni->tdm_slot.avail_slots * uni->tdm_slot.slot_width / 8;

	/* check frame size is allowed */
	if ((frame_size > UNIPERIF_MAX_FRAME_SZ) ||
	    (frame_size & ~(int)UNIPERIF_ALLOWED_FRAME_SZ)) {
		FUNC1(uni->dev, "frame size not allowed: %d bytes\n",
			frame_size);
		return -EINVAL;
	}

	return 0;
}