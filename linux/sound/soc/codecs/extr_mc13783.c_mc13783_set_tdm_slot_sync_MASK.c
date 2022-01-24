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

/* Variables and functions */
 int FUNC0 (struct snd_soc_dai*,unsigned int,unsigned int,int,int) ; 
 int FUNC1 (struct snd_soc_dai*,unsigned int,unsigned int,int,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai,
	unsigned int tx_mask, unsigned int rx_mask, int slots,
	int slot_width)
{
	int ret;

	ret = FUNC1(dai, tx_mask, rx_mask, slots,
			slot_width);
	if (ret)
		return ret;

	ret = FUNC0(dai, tx_mask, rx_mask, slots,
			slot_width);

	return ret;
}