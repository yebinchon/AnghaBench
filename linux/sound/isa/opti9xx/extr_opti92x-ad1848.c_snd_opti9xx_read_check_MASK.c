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
struct snd_opti9xx {int mc_base; int mc_base_size; int mc_indir_index; int password; int pwd_reg; int /*<<< orphan*/ * res_mc_base; int /*<<< orphan*/ * res_mc_indir; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int FUNC0 (int) ; 
 unsigned char FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,int,char*) ; 
 int FUNC5 (struct snd_opti9xx*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_opti9xx*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct snd_opti9xx *chip)
{
	unsigned char value;
#ifdef OPTi93X
	unsigned long flags;
#endif

	chip->res_mc_base = FUNC4(chip->mc_base, chip->mc_base_size,
					   "OPTi9xx MC");
	if (chip->res_mc_base == NULL)
		return -EBUSY;
#ifndef OPTi93X
	value = FUNC5(chip, FUNC0(1));
	if (value != 0xff && value != FUNC1(chip->mc_base + FUNC0(1)))
		if (value == FUNC5(chip, FUNC0(1)))
			return 0;
#else	/* OPTi93X */
	chip->res_mc_indir = request_region(chip->mc_indir_index, 2,
					    "OPTi93x MC");
	if (chip->res_mc_indir == NULL)
		return -EBUSY;

	spin_lock_irqsave(&chip->lock, flags);
	outb(chip->password, chip->mc_base + chip->pwd_reg);
	outb(((chip->mc_indir_index & 0x1f0) >> 4), chip->mc_base);
	spin_unlock_irqrestore(&chip->lock, flags);

	value = snd_opti9xx_read(chip, OPTi9XX_MC_REG(7));
	snd_opti9xx_write(chip, OPTi9XX_MC_REG(7), 0xff - value);
	if (snd_opti9xx_read(chip, OPTi9XX_MC_REG(7)) == 0xff - value)
		return 0;

	release_and_free_resource(chip->res_mc_indir);
	chip->res_mc_indir = NULL;
#endif	/* OPTi93X */
	FUNC3(chip->res_mc_base);
	chip->res_mc_base = NULL;

	return -ENODEV;
}