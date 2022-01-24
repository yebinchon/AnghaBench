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
typedef  int u8 ;
struct snd_sb {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  mixer_lock; } ;

/* Variables and functions */
 int ALS4K_CR0_MX80_81_REG_WRITE_ENABLE ; 
 int /*<<< orphan*/  ALS4K_CR0_SB_CONFIG ; 
 int ALS4K_GCR8C_IRQ_MASK_CTRL_ENABLE ; 
 int ALS4K_GCR8C_MISC_CTRL ; 
 int ALS4K_GCR91_DMA0_ADDR ; 
 int ALS4K_GCR96_DMA3_MODE_COUNT ; 
 int ALS4K_GCR99_DMA_EMULATION_CTRL ; 
 int /*<<< orphan*/  SB_DMASETUP_DMA0 ; 
 int /*<<< orphan*/  SB_DSP4_DMASETUP ; 
 int FUNC0 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct snd_sb*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sb*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct snd_sb *chip)
{
	u8 tmp;
	int i;

	/* do some more configuration */
	FUNC5(&chip->mixer_lock);
	tmp = FUNC0(chip, ALS4K_CR0_SB_CONFIG);
	FUNC1(chip, ALS4K_CR0_SB_CONFIG,
				tmp|ALS4K_CR0_MX80_81_REG_WRITE_ENABLE);
	/* always select DMA channel 0, since we do not actually use DMA
	 * SPECS_PAGE: 19/20 */
	FUNC4(chip, SB_DSP4_DMASETUP, SB_DMASETUP_DMA0);
	FUNC1(chip, ALS4K_CR0_SB_CONFIG,
				 tmp & ~ALS4K_CR0_MX80_81_REG_WRITE_ENABLE);
	FUNC6(&chip->mixer_lock);
	
	FUNC5(&chip->reg_lock);
	/* enable interrupts */
	FUNC3(chip, ALS4K_GCR8C_MISC_CTRL,
					ALS4K_GCR8C_IRQ_MASK_CTRL_ENABLE);

	/* SPECS_PAGE: 39 */
	for (i = ALS4K_GCR91_DMA0_ADDR; i <= ALS4K_GCR96_DMA3_MODE_COUNT; ++i)
		FUNC3(chip, i, 0);
	/* enable burst mode to prevent dropouts during high PCI bus usage */
	FUNC3(chip, ALS4K_GCR99_DMA_EMULATION_CTRL,
		(FUNC2(chip, ALS4K_GCR99_DMA_EMULATION_CTRL) & ~0x07) | 0x04);
	FUNC6(&chip->reg_lock);
}