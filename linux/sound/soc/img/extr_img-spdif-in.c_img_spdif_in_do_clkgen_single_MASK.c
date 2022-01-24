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
struct img_spdif_in {unsigned int single_freq; int /*<<< orphan*/  lock; scalar_t__ active; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IMG_SPDIF_IN_CLKGEN ; 
 unsigned int IMG_SPDIF_IN_CLKGEN_HLD_MASK ; 
 unsigned int IMG_SPDIF_IN_CLKGEN_HLD_SHIFT ; 
 unsigned int IMG_SPDIF_IN_CLKGEN_NOM_MASK ; 
 unsigned int IMG_SPDIF_IN_CLKGEN_NOM_SHIFT ; 
 int FUNC0 (struct img_spdif_in*,unsigned int,unsigned long*) ; 
 int FUNC1 (unsigned int,unsigned int*,unsigned int*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct img_spdif_in*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct img_spdif_in *spdif,
		unsigned int rate)
{
	unsigned int nom, hld;
	unsigned long flags, clk_rate;
	int ret = 0;
	u32 reg;

	ret = FUNC0(spdif, rate, &clk_rate);
	if (ret)
		return ret;

	ret = FUNC1(rate, &nom, &hld, clk_rate);
	if (ret)
		return ret;

	reg = (nom << IMG_SPDIF_IN_CLKGEN_NOM_SHIFT) &
		IMG_SPDIF_IN_CLKGEN_NOM_MASK;
	reg |= (hld << IMG_SPDIF_IN_CLKGEN_HLD_SHIFT) &
		IMG_SPDIF_IN_CLKGEN_HLD_MASK;

	FUNC3(&spdif->lock, flags);

	if (spdif->active) {
		FUNC4(&spdif->lock, flags);
		return -EBUSY;
	}

	FUNC2(spdif, reg, IMG_SPDIF_IN_CLKGEN);

	spdif->single_freq = rate;

	FUNC4(&spdif->lock, flags);

	return 0;
}