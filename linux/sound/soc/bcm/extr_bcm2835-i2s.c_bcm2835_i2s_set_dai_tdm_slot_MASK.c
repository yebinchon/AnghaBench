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
struct bcm2835_i2s_dev {int tdm_slots; unsigned int rx_mask; unsigned int tx_mask; int slot_width; int frame_length; } ;

/* Variables and functions */
 int BCM2835_I2S_MAX_FRAME_LENGTH ; 
 int EINVAL ; 
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 struct bcm2835_i2s_dev* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai,
	unsigned int tx_mask, unsigned int rx_mask,
	int slots, int width)
{
	struct bcm2835_i2s_dev *dev = FUNC2(dai);

	if (slots) {
		if (slots < 0 || width < 0)
			return -EINVAL;

		/* Limit masks to available slots */
		rx_mask &= FUNC0(slots - 1, 0);
		tx_mask &= FUNC0(slots - 1, 0);

		/*
		 * The driver is limited to 2-channel setups.
		 * Check that exactly 2 bits are set in the masks.
		 */
		if (FUNC1((unsigned long) rx_mask) != 2
		    || FUNC1((unsigned long) tx_mask) != 2)
			return -EINVAL;

		if (slots * width > BCM2835_I2S_MAX_FRAME_LENGTH)
			return -EINVAL;
	}

	dev->tdm_slots = slots;

	dev->rx_mask = rx_mask;
	dev->tx_mask = tx_mask;
	dev->slot_width = width;
	dev->frame_length = slots * width;

	return 0;
}