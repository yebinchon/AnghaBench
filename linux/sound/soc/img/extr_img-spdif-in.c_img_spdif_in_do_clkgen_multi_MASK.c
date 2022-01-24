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
typedef  unsigned int u32 ;
struct img_spdif_in {unsigned int trk; unsigned int* aclkgen_regs; int multi_freq; unsigned int* multi_freqs; int /*<<< orphan*/  lock; scalar_t__ active; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned int IMG_SPDIF_IN_ACLKGEN_HLD_MASK ; 
 unsigned int IMG_SPDIF_IN_ACLKGEN_HLD_SHIFT ; 
 unsigned int IMG_SPDIF_IN_ACLKGEN_NOM_MASK ; 
 unsigned int IMG_SPDIF_IN_ACLKGEN_NOM_SHIFT ; 
 unsigned int IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT ; 
 int IMG_SPDIF_IN_NUM_ACLKGEN ; 
 int /*<<< orphan*/  FUNC0 (struct img_spdif_in*,int) ; 
 int FUNC1 (struct img_spdif_in*,unsigned int,unsigned long*) ; 
 int FUNC2 (unsigned int,unsigned int*,unsigned int*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct img_spdif_in *spdif,
		unsigned int multi_freqs[])
{
	unsigned int nom, hld, rate, max_rate = 0;
	unsigned long flags, clk_rate;
	int i, ret = 0;
	u32 reg, trk_reg, temp_regs[IMG_SPDIF_IN_NUM_ACLKGEN];

	for (i = 0; i < IMG_SPDIF_IN_NUM_ACLKGEN; i++)
		if (multi_freqs[i] > max_rate)
			max_rate = multi_freqs[i];

	ret = FUNC1(spdif, max_rate, &clk_rate);
	if (ret)
		return ret;

	for (i = 0; i < IMG_SPDIF_IN_NUM_ACLKGEN; i++) {
		rate = multi_freqs[i];

		ret = FUNC2(rate, &nom, &hld, clk_rate);
		if (ret)
			return ret;

		reg = (nom << IMG_SPDIF_IN_ACLKGEN_NOM_SHIFT) &
			IMG_SPDIF_IN_ACLKGEN_NOM_MASK;
		reg |= (hld << IMG_SPDIF_IN_ACLKGEN_HLD_SHIFT) &
			IMG_SPDIF_IN_ACLKGEN_HLD_MASK;
		temp_regs[i] = reg;
	}

	FUNC3(&spdif->lock, flags);

	if (spdif->active) {
		FUNC4(&spdif->lock, flags);
		return -EBUSY;
	}

	trk_reg = spdif->trk << IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT;

	for (i = 0; i < IMG_SPDIF_IN_NUM_ACLKGEN; i++) {
		spdif->aclkgen_regs[i] = temp_regs[i] | trk_reg;
		FUNC0(spdif, i);
	}

	spdif->multi_freq = true;
	spdif->multi_freqs[0] = multi_freqs[0];
	spdif->multi_freqs[1] = multi_freqs[1];
	spdif->multi_freqs[2] = multi_freqs[2];
	spdif->multi_freqs[3] = multi_freqs[3];

	FUNC4(&spdif->lock, flags);

	return 0;
}